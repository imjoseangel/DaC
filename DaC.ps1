# Example of Documentation as Code

[CmdletBinding(SupportsShouldProcess=$True)]
Param(
  [Parameter(Mandatory=$true,Position=0, HelpMessage="Please specify if you want Run or Doc")]
  [ValidateSet("Run","Doc")]
  [string]$RunorDoc = $null
)

if ($PSCmdlet.ShouldProcess("$RunorDoc","Return Options"))

{
switch ($RunorDoc)
{
    "Run" {Write-Output "Here goes the code to run `$RunorDoc = $RunorDoc"}

    "Doc" {

# DACv1    

@"
## Documentation Starts

Here you can add all the needed markdown documentation. You can split it as shown in this script.

"@

# DACv2

@"

### Documentation Continues

Here goes the documentation example with a table:

1 | 2 | 3 | 4 | 5
---|---|---|---
T | H | I | S |
I | S |   | A |
T | A | B | L | E
"@
                }
        }
}
