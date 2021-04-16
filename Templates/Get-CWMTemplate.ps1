function Get-CWMTemplate {
    [CmdletBinding()]
    param(
        [int]$id,
        [string]$Condition,
        [ValidatePattern('\S* (desc|asc)')]
        [string]$orderBy,
        [string]$childConditions,
        [string]$customFieldConditions,
        [int]$page,
        [int]$pageSize,
        [string[]]$fields,
        [switch]$all
    )

    $Endpoint = '<Endpoint>'
    if($id){ $Endpoint = Join-Url $Endpoint $id }

    return Invoke-CWMGetMaster -Arguments $PsBoundParameters -Endpoint $Endpoint
}
