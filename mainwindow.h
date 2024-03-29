#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include "dialog.h"
#include "form.h"
#include <QKeyEvent>
#include "mywidget.h"
#include "mydialog.h"
namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

private slots:
    void on_pushButton_clicked();

    void on_pushButton_2_clicked();

    void on_pushButton_pressed();
    void keyPressEvent(QKeyEvent *event);
    void on_pushButton_3_clicked();

    void on_pushButton_4_clicked();

private:
    Ui::MainWindow *ui;
    Dialog dialog;
    Form form;
    MyWidget mywidget;
    mydialog mydialog1;
};

#endif // MAINWINDOW_H
