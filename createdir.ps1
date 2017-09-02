#Create directorys for a show with a dumb ammount of discs


$dir= "E:\Video\one_piece\box_"
$box= Read-host -Prompt 'How many Boxes: '
$discs= Read-Host -Prompt 'How many Discs: '



For ($i=1; $i -le "$box"; $i++)
   {
     Write-Host "$i"
     $folder=$dir+$i

     [system.io.directory]::CreateDirectory("$folder")
     [system.io.directory]::CreateDirectory("$folder\Disc_1")
     [system.io.directory]::CreateDirectory("$folder\Disc_2")
     [system.io.directory]::CreateDirectory("$folder\Disc_3")
     [system.io.directory]::CreateDirectory("$folder\Disc_4")
     #[system.io.directory]::CreateDirectory("$folder\Disc_5")
     #[system.io.directory]::CreateDirectory("$folder\Disc_6")
     #[system.io.directory]::CreateDirectory("$folder\Disc_7")
     #[system.io.directory]::CreateDirectory("$folder\Disc_8")
   }
