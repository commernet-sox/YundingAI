using MahApps.Metro.Controls;
using MahApps.Metro.Controls.Dialogs;
using System;
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
using YundingAI.ViewModels;

namespace YundingAI.Views
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindowView : MetroWindow
    {
        public MainWindowView()
        {
            InitializeComponent();
        }

        private async void ConfirmShutdown(object sender, RoutedEventArgs e)
        {
            var mySettings = new MetroDialogSettings
            {
                AffirmativeButtonText = "Quit",
                NegativeButtonText = "Cancel",
                AnimateShow = true,
                AnimateHide = false
            };

            var result = await this.ShowMessageAsync("Quit application?",
                                                     "Sure you want to quit application?",
                                                     MessageDialogStyle.AffirmativeAndNegative, mySettings);

            var shutdown = result == MessageDialogResult.Affirmative;

            if (shutdown)
            {
                Application.Current.Shutdown();
            }
        }

        private void ShowZBPic(object sender, RoutedEventArgs e)
        {
            if (ZBPanel.Visibility == Visibility.Visible)
            {
                ZBPanel.Visibility = Visibility.Collapsed;
            }
            else
            {
                ZBPanel.Visibility = Visibility.Visible;
            }
        }

        private void MetroWindow_Deactivated(object sender, EventArgs e)
        {
            //this.Width = 200;
            //this.Height = 200;
            //this.Topmost = true;
            //this.Top = 0;
            //this.Left = 100;
        }

        private void MetroWindow_PreviewLostKeyboardFocus(object sender, KeyboardFocusChangedEventArgs e)
        {
            //Window window = (Window)sender;
            //window.Topmost = true;
        }
    }
}
