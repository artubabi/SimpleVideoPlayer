   M S B A M L   `   `   `  ����F  BMediaPlayer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:MediaPlayerMediaPlayer  5   	        MediaPlayer.MediaPlayerApp   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:MediaPlayer     5   	   -   5          � Title$  MediaPlayer��5   	   $	��450��6   $	��800��6*    � 	Resources 5	      +  %MediaPlayer.SecoundsTimeSpanConverter   secoundsTimeSpanConverter��%   &	          5
   
   6*   5      .��5      ]� ���#403838.+�5   
   � $	��Top=�6    � ColumnDefinitions 5      �� 5      $��1* �6#   �� 5      $	��20* �6#   .+�5      o� $��0��6   
�������$
��Left=�66   .@�5      m� $
��File��6   $��25��6)   .@�5      m� -   5        $
��Open��5      $
��Open��6+   $��25��6O   �� 5      m� 5      -   5        $
��Exit��5      $
��Exit��6+   $��25��6O   5      5      �� 5      -   5         ��Name$ 
MovieTitle��5      $��1��6(   $��Center=�68   $#��KEEP CALM AND WATCH MOUNTAINS��6U   
�������6}   5      � 5   
   $��Bottom=�6    5      �� 5      $��1* �6#   �� 5      $��1* �6#   �� 5      $��1* �6#   �� 5       $��1* �6#   �� 5!      $��1* �6#   �� 5"      $��1* �6#   �� 5#      $��3* �6#   �� 5$      $��1* �6#   �� 5%      $��1* �6#   .+�5(      �� -   5        $��0��5(      
�������.��5)      ��  �� Orientation$ 
Horizontal=�6   .+�5*      �� $��/Contents/play.png��6   $��20��68   $��20��6D   �� 5+      $	��5.0q�6    $��Center=�6-   $��Center=�6J   Play6k   5,      5-      �� 5.      -   5        $��1��5.      
�������.��5/      �� $ 
Horizontal=�6   .+�50      �� $��/Contents/pause.png��6   $��20��69   $��20��6E   �� 51      $	��5.0q�6    $��Center=�6-   $��Center=�6J   Pause6l   52      53      �� 54      -   5        $��2��54      
�������.��55      �� $ 
Horizontal=�6   .+�56      �� $��/Contents/stop.png��6   $��20��68   $��20��6D   �� 57      $	��5.0q�6    $��Center=�6-   $��Center=�6J   Stop6k   58      59      �� 5:      $��3��6   $��Center=�6$   $��Right=�6?   $��Volume: ��6[   
�������6n   �� 5;      $��4��6   $��Center=�6%    � Maximum$ 1Q�6w    � Value 6@   ��  �� ElementName$ MediaPlayer�� �� Path$ Volume�6w   �� 5<      $��5��6   $��Center=�6$   $��Right=�6?   $��Time: ��6[   
�������6l   �� 5=      -   5        	 ��Name$	 TimerSlider��5>      $��6��5=      $��Center=�6%   5A      �� 5B      -	   5        $ MediaPlayerTime��5C      $��7��5B      $��Center=�5D      $��Center=�5E      
���������5G      �� $ TimerSlider��$ Value�
 �� 	Converter#
 [  �� 5H      -
   5        $ MediaPlayerTotalTime��5H   $   $��8��6   $��Center=�6B   $��Center=�6]   
�������6z   5I      r� 5J   
   -   5         r�Name$ MediaPlayer��5N      $��15q�5J       r� Source$* $contents\mountainspixabaylicence.mp4?�5K       r� Volume$
 0.25Q�5L       r� LoadedBehavior$ Manual=�5M      5P      5R      5S      