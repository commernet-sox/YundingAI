   M S B A M L   `   `   `  ����D  @YundingAI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:YundingAI	YundingAI  5   	   $    YundingAI.Views.MainWindowView   5      \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   T PMahApps.Metro, Version=2.0.0.0, Culture=neutral, PublicKeyToken=51482d6f650b2b3f6mah,http://metro.mahapps.com/winfx/xaml/controls  5   	   :d2http://schemas.microsoft.com/expression/blend/2008  5   	   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5   	   Q MControlzEx, Version=4.0.0.0, Culture=neutral, PublicKeyToken=69f1c32f803d307ethemingurn:controlzex  5   	   #localclr-namespace:YundingAI  5   	   -   5          � Title$  云顶之弈助手��5
   	   $	��100��6   $	��250��6%   (  "MahApps.Metro.Controls.MetroWindow   ShowCloseButton$ False��5   	      ShowMinButton$ False��5   	      ShowMaxRestoreButton$ False��5   	    � AllowsTransparency$
 True��5   	    � WindowStyle$
 None=�5   	      ShowTitleBar 5   	   �� *ShowMyTitleBar+ �� Mode$ TwoWay=� J� Opacity 5   	   �� *
OpacitySet+$ TwoWay=�	 � 	Resources	 5          SyncModePreferenceEnumValues
 S� 
MethodName S� 
ObjectType&   ControlzEx.Theming.ThemeSyncMode S� MethodParameters M� TypeName  AppThemeMenuIcon  AccentMenuIcon  AppThemeMenuItemStyle  MahApps.Styles.MenuItem �� BasedOn �� 
TargetType �� Property �� Value  AccentColorMenuItemStyle  SyncModeMenuItemStyle �� RelativeSource �� AncestorType >�Name  CustomDialogTest ��Name�� 5   
   %�  &	        &	 z    &	 (   &	 �    7  7  &	 �    7  7  &	 �    7  &	 �    S� 5      $
 	GetValues��5   !   "  5   !    5      M� 5      $ theming:ThemeSyncMode��6   5      A� 5       $��16��5!      $��16��5"      $��1��5&      ��5$      �� *
ColorBrush+$ OneWay=���5%      �� *BorderColorBrush+$ OneWay=�5&      A� 5'      $��16��5(      $��16��5)      ��5+      �� *
ColorBrush+$ OneWay=��� 5-      8   " m�5/      .�50      ��  �@m�Command 6,   �� *ChangeAccentCommand+�� 51       �@m�CommandParameter 65   �� *Name+$ OneWay=��� 52       � �� 6+   �� *Name+$ OneWay=��� 53       �@m�Icon8  6)   54      �� 56      8   " m�58      .�59      ��  �@m�Command 6,   �� *ChangeAccentCommand+�� 5:       �@m�CommandParameter 65   �� *Name+$ OneWay=��� 5;       � �� 6+   �� *Name+$ OneWay=��� 5<       �@m�Icon8  6)   5=      �� 5?      8   " m�5A      .�5B      ��  �@m�Command 6,   �� *#!DataContext.ChangeSyncModeCommand+ �� 
 Window�� 5C       �@m�CommandParameter 65   �� $ OneTime=��� 5D       � �� 6+   �� $ OneTime=�5E      >� 5G      $ CustomDialogTest��5H      $	��200��5I      .��5K      �� $ MessageTextBlock��6   $*��$Message shown by this custom Dialog.��66   5M      5Q      .��5S      �  6   �� *
OpacitySet+$ TwoWay=� � RowDefinitions 5T   
   �� 5U      $
��auto �6   6,   �� 5V      $��* �6   6)    � ColumnDefinitions 5X   
   �� 5Y      $
��auto �6   6.   �� 5Z      $��* �6   6+   .+�5]   
   o� $��0��6   $��0��5^      $��5q�5_      $
��Left=�5`      $��Stretch=�5a      .@�5b      m� $��主题��6   #��[ 5c      ��5d      �� *	AppThemes+$ OneWay=�m� 5e      $��菜单��6   .@�5f      m� -   5        $��	装备库��5f       m� IsCheckable$
 True��5g      5h      m� 5j      $��显示标题栏��6   $
 True��5k       m� 	IsChecked 5l      ��  �� Path$ ShowMyTitleBar�$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�m� 5m      $��显示任务栏图标��6   $
 True��5n       5o      ��  �� *FindAncestor+"  $ ShowInTaskbar�m� 5p      $��总是显示��6   $
 True��5q       5r      ��  �� *FindAncestor+"  $ Topmost�m� 5s      -   5        $��退出��5s   3   5t      5u      �� 5v   
   $��0��6   $��1��6   $	��100��6.   $��4q�5w      )  #MahApps.Metro.Controls.SliderHelper   ChangeValueBy$ LargeChange=�5x         EnableMouseWheel$ 
MouseHover=�5y       �� AutoToolTipPlacement$ TopLeft=�5z       � LargeChange$	 0.1Q�5{        � Maximum$  1Q�5|      ! � Minimum$	! 0.2Q�5}      " �� Orientation$" 
Horizontal=�5~      # � SmallChange$	# 0.1Q�5      $ � Value$ 5�      �� *
OpacitySet+�� 5�   
   -   5        % ��Name$% ZBPanel��5�      $��2��6&   $��1��6:   $y�	Collapsed=�6G   .+�5�      �� $��../assets/ZB.jpg��6   $	��100��6.   $	��100��6:   6I   5�      5�      5�      