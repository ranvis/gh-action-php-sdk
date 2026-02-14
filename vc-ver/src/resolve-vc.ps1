param(
	[Parameter(Mandatory=$true)] [ValidateNotNullOrEmpty()] [string]$PhpVersion
)

# https://windows.php.net/downloads/releases/
# https://windows.php.net/downloads/releases/archives/
if ($PhpVersion -match "^8\.[^0-3]") {
	"vs17"
} elseif ($PhpVersion -match "^8\.[0-3]") {
	"vs16"
} elseif ($PhpVersion -match "^7\.[234]") {
	"vc15"
} elseif ($PhpVersion -match "^7\.[01]") {
	"vc14"
} elseif ($PhpVersion -eq "5.5") {
	"vc11"
} else {
	throw "unknown toolset"
}
