$username = $env:UserName
Invoke-WebRequest -Uri "{http://ustools.vassar.edu/classfiles/WindowsImage/fall.jpg}" -OutFile "C:\users\$username\Pictures\wallpaper.jpg"

Function Set-WallPaper($Value)

{

 Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name wallpaper -value $value

 rundll32.exe user32.dll, UpdatePerUserSystemParameters

}

Set-WallPaper -Value "C:\users\$username\Pictures\wallpaper.jpg"
