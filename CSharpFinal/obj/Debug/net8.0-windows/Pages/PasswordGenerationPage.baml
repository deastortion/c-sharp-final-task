   M S B A M L   `   `   `  ����F  BCSharpFinal, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:CSharpFinal.PagesCSharpFinal.Pages  5      .    (CSharpFinal.Pages.PasswordGenerationPage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:CSharpFinal.Pages     5        N� Title$  Password Generation Page��5	      .��5      � ���#6366f1 � ColumnDefinitions 5   
   �� 5      �� 5      $	��500 �6   �� 5       � RowDefinitions 5   
   �� 5      �� 5      $
��Auto �6   �� 5      .+�5   
   �� $��1��6   $��1��6!    �� Padding$ 10q�6.   ���#f1f5f9���#1e1b4b$
��0.45q�6f    �� CornerRadius$ 10��6}   ._�5      �  5      �� 5       5      �� 5      $
��Auto �6$   �� 5      $
��Auto �6$   �� 5      $
��Auto �6$   �� 5       $
��Auto �6$   �� 5!      $
��Auto �6$   �� 5"      �� 5#      $
��Auto �6$   .+�5&      �� $��0��6   $��0��6(   ���#1e293b$��18(�6J   $
��Bold"�6X   .��6j   Password Creation5(      �� 5)      $��0��6   $��1��6)   $��5,0,5,0q�66   $��3��6G   ���#94a3b86i   �� 5*      $��0��6   $��2��6,   $
��Wrap=�69    �� Padding$ 5q�6M   ���#0f172a- Please, enter your password5,      �� 5-      -   5         ��Name$ PasswordTextBox��5-      $��0��63   $��3��6C   $��5,0,5,0q�6P   $��5q�6a   �� 5.      $��0��6   $��4��6,   $
��Wrap=�69   $ 5q�6M   ���#0f172a- Please, enter your salt50      �� 51      -   5        $ SaltTextBox��51      $��0��6/   $��5��6?   $��5,0,5,0q�6L   $��5q�6]   �� 52      -   5        $��0��52      $��6��6)   $��5,20,5,5q�53      $��20, 6q�6+   $��Proceed!��55      56       J� Effect 57      3  -System.Windows.Media.Effects.DropShadowEffect  58         
BlurRadius$ 10Q�6#   	   	Direction$		 -90Q�63   
   RenderingBias$
 Quality=�6C      ShadowDepth$ 2Q�6[      Color$ #4338ca��6k   5:      5;      5<      