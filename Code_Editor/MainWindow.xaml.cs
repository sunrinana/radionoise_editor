﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using SocketIOClient;
using Microsoft.Win32;
using Quobject.SocketIoClientDotNet.Client;
using System.Threading;
using System.Windows.Threading;

namespace Code_Editor
{
    
    /// <summary>
    /// MainWindow.xaml에 대한 상호 작용 논리
    /// </summary>
    public partial class MainWindow : Window
    {
        OpponentManager _OpponentManager = new OpponentManager();
        SettingManager _SettingManager = new SettingManager();
        public SaveFileDialog sd = new SaveFileDialog();
        string recTXT;
        DispatcherTimer timer = new DispatcherTimer();
        Socket socket = IO.Socket("http://iwin247.net:8080/");
        List<string> _Opponent;
        public MainWindow()
        {
            InitializeComponent();
            _OpponentManager.Init_Oppo();
            _Opponent = _OpponentManager.Get_Oppo();
            _Opponent.Add("New Opponent");
            oppoCombo.ItemsSource = _Opponent;
            _SettingManager.Load_Setting();
            //MessageBox.Show(Setting.Font + Setting.FontSize.ToString() + Setting.Color.ToString() + Setting.ImagePath + Setting.ID + Setting.PW);
            timer.Interval = TimeSpan.FromSeconds(0.1f);
            timer.Tick += new EventHandler(Timer_Tick);
            timer.Start();
            sd.Filter = "C# File|*.cs|Python File|*.py|HTML File|*.html|CSS File|*.css|JS File|*.js|C File|*.c|C++ File|*.cpp|Header File|*.h|Text File|*.txt";
            sd.Title = "저장";
            socket.On(Socket.EVENT_CONNECT, () => {});
            socket.On("message", (msg) => {
                Console.WriteLine(msg);
                recTXT += (msg + "\r\n");
            });
            socket.Connect();
            //Console.WriteLine("Message Send");
        }

        private void Timer_Tick(object sender, EventArgs e)
        {
            Message.Text = recTXT;
        }

        private void Window_SizeChanged(object sender, SizeChangedEventArgs e)
        {

        }

        private void TextBox_KeyDown(object sender, KeyEventArgs e)
        {
            if(e.Key == Key.Enter)
            {
                recTXT += ("me : \r\n");
                socket.Emit("message", SendTXT.Text); //Socket으로 메세지를 보낸다.
                SendTXT.Text = ""; //메세지를 보냈으니 초기화
            }
        }

        private void NewItem_Click(object sender, RoutedEventArgs e)
        {
            //New File Dialog
            /*
             * SaveFileDialog로 File저장하게 하고 할 것인지
             * 아니면 Listview로 VS 스타일로 갈 것인지 결정
             * 
             * 그 다음 Create File모드로 해서 간다.
             * 
             */

        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            //socket.Disconnect();
            _OpponentManager.Save_Oppo();
        }

        private void CodeEditor_KeyDown(object sender, KeyEventArgs e)
        {
            /*
             * Key가 '{'이고 그 다음 Enter가 눌린다면 Tab을 추가해줘야 한다?
             * '}'가 나오면 Tab을 하나 줄여줘야 한다? 
             */

        }

        private void oppoCombo_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if(oppoCombo.SelectedValue.ToString() == "New Opponent") //새 대화상대 추가 요청시
            {

            }
            else //아닐 경우 소켓을 열어줘야 한다.
            {

            }
        }

        private void CodeEditor_TextInput(object sender, TextCompositionEventArgs e)
        {
            
        }

        private void CodeEditor_PreviewTextInput(object sender, TextCompositionEventArgs e)
        { 

        }

        private void Settings_Click(object sender, RoutedEventArgs e)
        {
            Settings set = new Settings();
            set.ShowDialog();
            
        }

        private void digFont_Click(object sender, RoutedEventArgs e)
        {
            var fontDig = new System.Windows.Forms.FontDialog();
            fontDig.ShowColor = false;
            fontDig.ShowEffects = false;

            System.Drawing.Font memFont;
            if(fontDig.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                memFont = fontDig.Font;
                CodeEditor.FontFamily = new FontFamily(memFont.Name);
                Setting.Font = memFont.Name;
                Setting.FontSize = Convert.ToInt32(memFont.Size);
                CodeEditor.FontSize = memFont.Size;
            }
        }

        private void Cut_Click(object sender, RoutedEventArgs e)
        {
            CodeEditor.Cut();
        }

        private void Paste_Click(object sender, RoutedEventArgs e)
        {
            CodeEditor.Paste();
        }

        private void Undo_Click(object sender, RoutedEventArgs e)
        {
            CodeEditor.Undo();
        }

        private void Redo_Click(object sender, RoutedEventArgs e)
        {
            CodeEditor.Redo();
        }

        private void Open_Click(object sender, RoutedEventArgs e)
        {
            /*
             * openFileDialog 한다음 확장자만 가져와서 SyntaxHighlighting을 설정해 준다.
             */
        }

        private void Save_Click(object sender, RoutedEventArgs e)
        {
            /*
             * 만약 Save가 되어있었다면(원래 있던파일이라면) 바로 저장해 준다.
             * 안 되어 있었다면 저장해 준다. 근데 만들때 문법강조를 사용하려면 미리 확장자를 지정해 줘야 하는데
             * 상관 없지 않을까
             * 
             */
        }

        private void Exit_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
}
