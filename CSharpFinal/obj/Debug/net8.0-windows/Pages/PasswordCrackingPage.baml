   M S B A M L   `   `   `  ����F  BCSharpFinal, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:CSharpFinal.PagesCSharpFinal.Pages  5      ,    &CSharpFinal.Pages.PasswordCrackingPage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:CSharpFinal.Pages     5        N� Title$  Password Cracking Page��5	      .��5
      � ���#6366f1 � ColumnDefinitions 5   
   �� 5      �� 5      $	��550 �6   �� 5       � RowDefinitions 5   
   �� 5      �� 5      $
��Auto �6   �� 5      .+�5   
   �� $��1��6   $��1��6!    �� Padding$ 10q�6.   ���#f1f5f9���#1e1b4b$
��0.45q�6f    �� CornerRadius$ 10��6}   ._�5      �  5      �� 5       5      �� 5      $
��Auto �6$   �� 5      $
��Auto �6$   �� 5      $
��Auto �6$   �� 5      $
��Auto �6$   �� 5       $
��Auto �6$   �� 5!      $
��Auto �6$   �� 5"      �� 5#      $
��Auto �6$   .+�5&      �� $��0��6   $��0��6(   ���#1e293b$��18(�6J   $
��Bold"�6X   .��6j   Password Cracking5(      �� 5)      $��0��6   $��1��6)   $��5,0,5,0q�66   $��3��6G   ���#94a3b86i   �� 5*      -   5         ��Name$ PasswordTextBlock��5*      $��0��67   $��2��6G   $
��Wrap=�6T    �� Padding$ 5q�6h   ���#0f172a- Password: asd5,      �� 5-      -   5        $ SaltTextBlock��5-      $��0��63   $��3��6C   $
��Wrap=�6P   $ 
5, 1, 5, 5q�6d   ���#0f172a- Salt: asd5/      �� 50      -   5        $ HashTextBlock��50      $��0��63   $��4��6C   $
��Wrap=�6P   $ 
5, 1, 5, 5q�6d   ���#0f172a- Hash: EF3Q15452      �� 53      -   5        $ TimerTextBlock��53      $��0��64   $��5��6D   $
��Wrap=�6Q   $ 
5, 1, 5, 5q�6e   ���#0f172a- Time: 0.000s55      �� 56      -   5        $ DecodedPasswordTextBlock��56      $��0��6>   $��6��6N   $
��Wrap=�6[   $ 
5, 1, 5, 5q�6o   ���#0f172a- Decoded password: ______58      �� 59      -   5        $��0��59      $��7��6)   $��5,20,5,5q�5:      $��20, 6q�6+   $��Crack!��5<      5=       J� Effect 5>      3  -System.Windows.Media.Effects.DropShadowEffect  5?         
BlurRadius$ 10Q�6#   	   	Direction$		 -90Q�63   
   RenderingBias$
 Quality=�6C      ShadowDepth$ 2Q�6[      Color$ #4338ca��6k   5A      5B      5C      