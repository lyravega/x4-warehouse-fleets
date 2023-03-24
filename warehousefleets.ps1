$source = "E:\_modding\X4\_lyr\warehouseFleets\x4-warehouse-fleets"
$destination = "D:\Vortex Mods\x4foundations\warehousefleets-939-1-02-1668469471\warehousefleets"

Get-ChildItem $source -Filter *.xml -Recurse | ForEach-Object {
	$destinationFolder = $destination + $_.FullName.SubString($source.Length)
	Write-Host "Copying $($_.BaseName)"
	Copy-Item -Path "$($_.FullName)" -Destination "$destinationFolder" -Recurse -Force
}