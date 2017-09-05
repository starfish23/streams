#Create directorys for a show with a dumb ammount of discs


$dir= "E:\Video\one_piece\season_"
$box= Read-host -Prompt 'How many Seasons: '




For ($i=0; $i -le "$box"; $i++)
   {
     Write-Host "$i"
     $folder=$dir+$i

     [system.io.directory]::CreateDirectory("$folder")

     }
