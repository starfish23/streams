$filelist = Get-ChildItem E:\Video\Mobile_Suit_Gundam -filter *.mkv -recurse
$num = $filelist | measure
$filecount = $num.count

$i = 0;
ForEach ($file in $filelist)
{
    $i++;
    $oldfile = $file.DirectoryName + "\" + $file.BaseName + $file.Extension;
    $newfile = $file.DirectoryName + "\" + $file.BaseName + ".mp4";

  $progress = ($i / $filecount) * 100
  $progress = [Math]::Round($progress,2)
  Clear-Host
  Write-Host -------------------------------------------------------------------------------
  Write-Host Handbrake Batch Encoding
  Write-Host "Processing - $oldfile"
  Write-Host "File $i of $filecount - $progress%"
  Write-Host -------------------------------------------------------------------------------

 Start-Process "C:\Program Files\HandBrake\HandBrakeCLI.exe" -ArgumentList " -Z `"Fast 720p30`" -i `"$oldfile`" -t 1 --angle 1 -c 2-3 -o `"$newfile`" -a 2" -Wait -NoNewWindow


}
