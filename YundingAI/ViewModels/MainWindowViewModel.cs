using Caliburn.Micro;
using ControlzEx.Theming;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using System.Windows.Media;
using YundingAI.Core;

namespace YundingAI.ViewModels

{
    public class AccentColorMenuData
    {
        public string? Name { get; set; }

        public Brush? BorderColorBrush { get; set; }

        public Brush? ColorBrush { get; set; }

        public AccentColorMenuData()
        {
            this.ChangeAccentCommand = new SimpleCommand<string?>(o => true, this.DoChangeTheme);
        }

        public ICommand ChangeAccentCommand { get; }

        protected virtual void DoChangeTheme(string? name)
        {
            if (name is not null)
            {
                ThemeManager.Current.ChangeThemeColorScheme(Application.Current, name);
            }
        }
    }
    public class AppThemeMenuData : AccentColorMenuData
    {
        protected override void DoChangeTheme(string? name)
        {
            if (name is not null)
            {
                ThemeManager.Current.ChangeThemeBaseColor(Application.Current, name);
            }
        }
    }
    public class MainWindowViewModel:Screen
    {
        public MainWindowViewModel()
        {
            // create metro theme color menu items for the demo
            this.AppThemes = ThemeManager.Current.Themes
                                         .GroupBy(x => x.BaseColorScheme)
                                         .Select(x => x.First())
                                         .Select(a => new AppThemeMenuData { Name = a.BaseColorScheme, BorderColorBrush = a.Resources["MahApps.Brushes.ThemeForeground"] as Brush, ColorBrush = a.Resources["MahApps.Brushes.ThemeBackground"] as Brush })
                                         .ToList();
           
        }
        //标题
        private bool showMyTitleBar = true;

        public bool ShowMyTitleBar
        {
            get => this.showMyTitleBar;
            set => this.Set(ref this.showMyTitleBar, value);
        }
        //主题
        public List<AppThemeMenuData> AppThemes { get; set; }
        //透明度设置
        private double opacitySet = 1;
        public double OpacitySet
        {
            get => this.opacitySet;
            set => this.Set(ref this.opacitySet, value);
        }
        //装备显示
        //private Visibility _zbShow=Visibility.Visible;
        //public Visibility ZBShow 
        //{
        //    get => this._zbShow;
        //    set => this.Set(ref this._zbShow, value);
        //}
    }
}
