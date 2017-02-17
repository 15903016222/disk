#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <JlCompress.h>
#include <windows.h>

class QClipboard;
class ElapsedTimer;

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();
    void closeEvent(QCloseEvent *event);
    enum Status {STATUS_IDLE=0, STATUS_READING, STATUS_WRITING, STATUS_EXIT, STATUS_CANCELED};
    bool nativeEvent(const QByteArray &type, void *vMsg, long *result);


private slots:

    void on_leFile_editingFinished();
    void on_tbBrowse_clicked();
    void on_bWrite_clicked();
    void on_bCancel_clicked();

private:
    // find attached devices
    void getLogicalDrives();
    void setReadWriteButtonState();
    void initializeHomeDir();
    //void updateMd5Controls();

private:
    Ui::MainWindow *ui;
    HANDLE hVolume;
    HANDLE hFile;
    HANDLE hRawDisk;
    static const unsigned short ONE_SEC_IN_MS = 1000;
    unsigned long long sectorsize;
    int status;
    char *sectorData;
    QTime update_timer;
    ElapsedTimer *elapsed_timer = NULL;
    QClipboard *clipboard;
    QuaZip *zip;
    QuaZipFile *outFile;
    QString myHomeDir;

};

#endif // MAINWINDOW_H
