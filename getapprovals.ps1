param 
(
    [parameter(Mandatory = $true)]
    [string]$Token,
    [parameter(Mandatory = $true)]
    [string]$DevopsApiUrl,
    [parameter(Mandatory = $true)]
    [string]$ServerDB,
    [parameter(Mandatory = $true)]
    [string]$UserDB,
    [parameter(Mandatory = $true)]
    [string]$PassDB
)

# settings
$user = ''

$pair = "$($user):$($Token)"

$encodedCreds = [System.Convert]::ToBase64String([System.Text.Encoding]::ASCII.GetBytes($pair))

$basicAuthValue = "Basic $encodedCreds"

$Headers = @{
    Authorization = $basicAuthValue
}

# get approvals

$Response = Invoke-WebRequest -Uri $DevopsApiUrl -Headers $Headers
if ($Response.count -gt 0) {
    $data = $Response | ConvertFrom-Json

    Import-Module SQLPS
    $Database = "ApprovalsLog"  
    $TableName = "dbo.Approvals"  
    

    foreach ($approval in $data.value) {
        #Write-Host $approval

        $Connection = New-Object System.Data.SQLClient.SQLConnection  
        # With or without windows auth
        #$Connection.ConnectionString = "server='$ServerDB';database='$Database';User Id='$UserDB'; Password='$PassDB'"  
        $Connection.ConnectionString = "server='$ServerDB';database='$Database';Trusted_Connection=True;"
        $Connection.Open()

        $Command = New-Object System.Data.SQLClient.SQLCommand  
        $Command.Connection = $Connection  

        $insertquery = "INSERT INTO " + $TableName + 
            " ([Id],[ApproverId],[ApproverName],[ApproverUniqueName],[Type],[CreatedOn],[ModifiedOn],[Status],[ReleaseId],[ReleaseName],[ReleaseDefinitionId]," +
            "[ReleaseDefinitionName],[ReleaseEnvironmentId],[ReleaseEnvironmentName],[Comments]) " +
            "VALUES(" + $approval.id + ",'" + $approval.approver.id + "','" + $approval.approver.displayName + "','" + $approval.approver.uniqueName + "','" + 
            $approval.approvalType + "','" + $approval.createdOn + "','" + $approval.modifiedOn + "','" + $approval.status + "'," + $approval.release.id + ",'" + 
            $approval.release.name + "'," + $approval.releaseDefinition.id + ",'" + $approval.releaseDefinition.name + "'," + $approval.releaseEnvironment.id + ",'" + 
            $approval.releaseEnvironment.name + "','" + $approval.comments + "')"
        Write-Host $insertquery
        $Command.CommandText = $insertquery  
        $Command.ExecuteNonQuery()
        $Connection.Close();
        
    }
    
}

