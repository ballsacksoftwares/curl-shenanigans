$downloadsPath = (New-Object -ComObject Shell.Application).Namespace('shell:Downloads').Self.Path
function OnButtonClicked {
    Start-Process chrome.exe '--new-window https://drive.google.com/uc?export=download&id=1NI3zMqIh9fRNmj6x9dUfvCZpF1SXjhZo'
}
#-------------------------------------------------------------#
#----Initial Declarations-------------------------------------#
#-------------------------------------------------------------#

Add-Type -AssemblyName PresentationCore, PresentationFramework

$Xaml = @"
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" Width="539" Height="313" HorizontalAlignment="Left" VerticalAlignment="Top" Margin="214,24,0,0">
<Grid Margin="0,-7,5,-1">
 <Button Content="INSTALL" HorizontalAlignment="Left" VerticalAlignment="Top" Width="128" Margin="79,241,0,0" Background="#226d18" Height="39" FontSize="13" FontFamily="Segoe Script Bold" Name="m0egqs7jbxyfj"/>
<Image HorizontalAlignment="Left" Height="223" VerticalAlignment="Top" Width="306" Margin="37,7,0,0" OpacityMask="#04011b" Source="https://psyclown.codeberg.page/thankyou/Screenshot%202024-03-16%20210838.png"/>
<ProgressBar HorizontalAlignment="Left" Height="10" VerticalAlignment="Top" Width="100" Margin="92,270,0,0"/>
<TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="TextBlock" Margin="293,34.600006103515625,0,0"/>

<TextBlock HorizontalAlignment="Left" VerticalAlignment="Top" TextWrapping="Wrap" Text="Welcome to Whay Installer Thingy v0.1 Alpha Edition." Margin="277,23,0,0" Background="#000000" Foreground="#fc05d3" OpacityMask="#5235df" FontFamily="Comic Sans MS" FontSize="36"/>
</Grid>
</Window>
"@

#-------------------------------------------------------------#
#----Control Event Handlers-----------------------------------#
#-------------------------------------------------------------#


#region Logic
#Write your code here
#endregion 


#-------------------------------------------------------------#
#----Script Execution-----------------------------------------#
#-------------------------------------------------------------#

$Window = [Windows.Markup.XamlReader]::Parse($Xaml)

[xml]$xml = $Xaml

$xml.SelectNodes("//*[@Name]") | ForEach-Object { Set-Variable -Name $_.Name -Value $Window.FindName($_.Name) }


$m0egqs7jbxyfj.Add_Click({OnButtonClicked $this $_})

$Window.ShowDialog()


