   M S B A M L   `   `   `  ����F  BCode_Editor, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:Code_EditorCode_Editor  5   	       Code_Editor.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:Code_Editor     5   	   ` \ICSharpCode.AvalonEdit, Version=4.3.1.9429, Culture=neutral, PublicKeyToken=9cc39be672370310?
avalonedit.http://icsharpcode.net/sharpdevelop/avalonedit  5   	   -   5          � Title$  
MainWindow��5	   	   $��384.478��6   $��680.421��6-    � 	Resources 5
       �� 
TargetType �� Property �� Value   MenuItemControlTemplate1 �� 
TargetType ��Name J� SnapsToDevicePixels � ColumnDefinitions	 ��Name
 m� Icon F�Name �� HeaderStringFormat �� ContentStringFormat �Name � AllowsTransparency �� RelativeSource �� Padding ��Name �� 
ResourceId �� TypeInTargetAssembly �� ClearTypeHint ��Name �� ElementName ��Name-  'System.Windows.Input.KeyboardNavigation   DirectionalNavigation � IsSharedSizeScope   TabNavigation��%�  'J�       &	  N     �� 5   
   " J�6   .�5      ��  �@��Margin$ 0q�6'   5      �� 5   
   " m�6;   .R�5      �� $ templateRoot��6   #��z��6+   #��z��6W   #��z��6�    . ._�5      � $��Center=�6    5      �� 5      $
��Auto �6+   �� 5      $
��Auto �6+   .+�5      �� $
	 Icon��6'   #��z
 65   $
��Icon��6V   $��Center=�6k   $��16��6�   $��3q�6�   # z 6�   $��Center=�6�   $��16��6�   F� 5      $ 
GlyphPanel��6   T������� �O �`�G �ڊ � �D �ڊ �    �XO � � �g5 ���A  ] ������� @    р�� �O #��z��6t   $��LeftToRight=�6�   $��3q�6�   $y�	Collapsed=�6�   $��Center=�6�   �� 5      #��z��6'   #��z��6Z   $��1��6}   # z 6�   $��Header��6�   #��z��6�   ��. # z 6  � 5      $ 
PART_Popup��6    . |�.  #��� -�6�   $��Bottom=�6  ��6\   �� *IsSubmenuOpen+ �� *TemplatedParent+.��5      �� $ SubMenuBorder��6!   ���	#FF252526$��1q�6P   ���	#FF252526$ 2q�6{   ._�5      �� $ SubMenuScrollViewer��6+   ��6H   C� *�� $ MenuScrollViewer��" �+.��5   "   � $ Enabled=�6'   .+�5   &   �� $
��Left=�6-   $��0��6H   $	��Top=�6S   $��0��6k   .+�5   *   �� $ 
OpaqueRect��64   ��6H   �� *
Background+$ SubMenuBorder����6   �� *ActualHeight+$ SubMenuBorder����6�   �� *ActualWidth+$ SubMenuBorder��5   '   �� 5   &   ���	#FFD7D7D7$
��Left=�6A   $��29,2,0,2q�6\   $��1��6n   �� 5    &   $ ItemsPresenter��65   $ Cycle=�6M    . # z 6�   $ Cycle=�6�   5!   #   5"      5#      5$      5%      5&      5'      5(      .��5*      � $��0,0,0,0q�6   ���	#FF3F3F46 � RowDefinitions 5+   
   �� 5,      $��18 �6   �� 5-       5/   
   �� 50      $
��107* �6   �� 51      $
��410* �6   .+�55   
   ��  �� TabStripPlacement$ Bottom=�6   $��2��60   ���	#FF3E3E40���	#FF3F3F46.@�56      �� $
��Proj��6   $��	0,0,-17,0q�6$   $
��Left=�67   $��50��6R   ���	#FF3F3F46
���������57      �� 58       �� EndPoint$	 0,1&�6*    �� 
StartPoint$	 0,0&�69   .��59      �   � Color$  	#FFF0F0F0��6'   ! � Offset$! 0Q�69   � 5:      $  	#FF252526��6'   5;      .��5=      � ���	#FF2525266   5>      �� 5?      $
��Chat��6   $��	2,0,-15,0q�6$   $��20��67   $	��Top=�6C   " J� RenderTransformOrigin$" 0.5,0.45&�6[   
���������5@      �� 5A      $	 0,1&�6*   $	 0,0&�69   .��5B      � $  	#FFF0F0F0��6'   $! 0Q�69   � 5C      $  	#FF252526��6'   5D      .��5F      � ���	#FF3F3F46.+�5G      � $��0,0,0,0q�6    5H      �� 5I      $��20 �6,   �� 5J      $
��243* �6,   �� 5K      $��27 �6,   .+�5M      �� -   5        # ��Name$# 	oppoCombo��5M   #   $��1��66   ���	#FF252526���	#FF2525266v   �� 5N      -   5        $ ��Name$$ Message��5N   3   $��2��6"   % �� TextWrapping$
% Wrap=�6D   $�� ��6X   ���	#FF252526���	#FF252526
�������$��1��6�   �� 5O      -   5        $$ SendTXT��5O   3   $��3��6"   $
% Wrap=�6D   $��Send Messages��6X   ���	#FF252526���	#FF252526
�������$��0,4,0,0q�6�   $��2��6�   5P      5Q      5R      5S      � 5U   
   $��2��6   ���	#FF3F3F46.+�5V      o� $	��Top=�6   ���	#FF252526.@�5W      m� $��_File��6   
����������	#FF252526���	#FF252526.@�5X      m� -   5        & m�Name$	& New��5X      $
��_New��6,   ���	#FF252526���	#FF2525266g   m� 5Y      -   5        $
& Open��5Y      $��_Open��6-   ���	#FF252526���	#FF2525266S   m� 5Z      -   5        $
& Save��5Z      $��_Save��6-   ���	#FF252526���	#FF2525266S   m� 5[      -   5        $
& Exit��5[      $��_Exit��6-   ���	#FF252526���	#FF2525266S   5\      m� 5]      $��_Edit��6   
����������	#FF252526.@�5^      m� -	   5        $	& Cut��5^      $
��_Cut��6,   ���	#FF252526���	#FF2525266Q   m� 5_      -
   5        $& Paste��5_      $��_Paste��6.   ���	#FF252526���	#FF2525266U   m� 5`      -   5        $
& Undo��5`      $��_Undo��6-   ���	#FF252526���	#FF2525266T   m� 5a      -   5        $
& Redo��5a      $��_Redo��6-   ���	#FF252526���	#FF2525266S   5b      m� 5c      $��_Tools��6   
�������.@�5d      m� -   5        $
& Sett��5d      $��	_Settings��6-   ���	#FF252526���	#FF2525266o   m� 5e      -   5        $& digFont��5e      $��_Font��60   ���	#FF252526���	#FF2525266n   5f      5g      5h      '  !ICSharpCode.AvalonEdit.TextEditor  5j   
   -   5        '  Name$' 
CodeEditor��5j   Q   (   ShowLineNumbers( . )   SyntaxHighlightingM  GICSharpCode.AvalonEdit.Highlighting.HighlightingDefinitionTypeConverter$
) HTML 67   $��Consolas)�6e   $��2,0,0,0q�6{   $��1��6�   $��1��6�   
�������*   Text.* 6*  ��5k      �� 5l      + �� ImageSource$+ Resources/pre_back.png��6   .* 5m   0   5n      5p      5q      