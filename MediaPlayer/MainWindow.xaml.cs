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
using System.Windows.Threading;
using System.Windows.Forms;

namespace MediaPlayer
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MediaPlayerApp : Window
    {
        DispatcherTimer dispatcherTimer;


        public MediaPlayerApp()
        {
            InitializeComponent();
        }

        private void PlayButtonClick(object sender, RoutedEventArgs e)
        {
            MediaPlayer.Play();
            
            if (dispatcherTimer != null)
                dispatcherTimer.Start();
                 
        }

        private void PauseButtonClick(object sender, RoutedEventArgs e)
        {
            MediaPlayer.Pause();
            if (dispatcherTimer != null)
                dispatcherTimer.Stop();

        }

        private void StopButtonClick(object sender, RoutedEventArgs e)
        {
            MediaPlayer.Stop();
            TimerSlider.Value = MediaPlayer.Position.TotalSeconds;
            if (dispatcherTimer != null)
                dispatcherTimer.Stop();
        }

        private void MediaPlayerMediaFailed(object sender, ExceptionRoutedEventArgs e)
        {
            System.Windows.MessageBox.Show(e.ErrorException.Message);
        }

        private void WindowLoaded(object sender, RoutedEventArgs e)
        {
            MediaPlayer.ScrubbingEnabled = true;
            MediaPlayer.Stop();
        }

        private void MediaPlayerOpened(object sender, RoutedEventArgs e)
        {
            TimerSlider.Maximum = MediaPlayer.NaturalDuration.TimeSpan.TotalSeconds;

            dispatcherTimer = new DispatcherTimer();
            dispatcherTimer.Interval = TimeSpan.FromSeconds(1);
            dispatcherTimer.Tick += dispatcherTimerTick;

            MediaPlayerTotalTime.Content = MediaPlayer.NaturalDuration.TimeSpan.ToString(@"hh\:mm\:ss");



        }

        private void dispatcherTimerTick(object sender, EventArgs e)
        {
            TimerSlider.Value = MediaPlayer.Position.TotalSeconds;
        }

        private void TimerSliderChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            MediaPlayer.Position = TimeSpan.FromSeconds(TimerSlider.Value);
        }

        private void TimerSliderDragStarted(object sender, System.Windows.Controls.Primitives.DragStartedEventArgs e)
        {
            MediaPlayer.Pause();
            if (dispatcherTimer != null)
                dispatcherTimer.Stop();
        }

        private void TimerSliderDragCompleted(object sender, System.Windows.Controls.Primitives.DragCompletedEventArgs e)
        {
            MediaPlayer.Play();
            if (dispatcherTimer != null)
                dispatcherTimer.Start();
        }

        private void menuOpenClick(object sender, RoutedEventArgs e)
        {
            MediaPlayer.Pause();
            if (dispatcherTimer != null)
                dispatcherTimer.Stop();

            using (OpenFileDialog openFileDialog = new OpenFileDialog())
            {
                openFileDialog.InitialDirectory = "c:\\";
                openFileDialog.Filter = "mp4 files (*.mp4)|*.mp4|All files (*.*)|*.*";
                openFileDialog.FilterIndex = 1;
                openFileDialog.RestoreDirectory = true;

                if (openFileDialog.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                {
                    System.Uri filePath = new System.Uri(openFileDialog.FileName);
                    MediaPlayer.Source = filePath;

                    // Get movie title
                    string[] splitedFilePath = filePath.ToString().Split('/');
                    MovieTitle.Content = splitedFilePath[splitedFilePath.Length - 1];
                }
            }
        }


        private void menuExitClick(object sender, RoutedEventArgs e)
        {

        }
    }
}
