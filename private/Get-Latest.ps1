<#
  Function:  Get-Latest

  Purpose:  Finds the latest date from a series of dates with the PowerShell pipeline

  Example:  
    
           $Hashtable | Get-latest
#>
function Get-Latest {
    Begin { $latest = $null }
    Process {
            if ($_  -gt $latest) { $latest = $_  }
    }
    End { $latest }
}
