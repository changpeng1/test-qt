#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <iostream>
using namespace std;
MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    this->setAutoFillBackground(true);
    QPixmap pixmap("/home/changpeng/Downloads/c.jpg");
    QPixmap pixmap1=pixmap.scaled(this->size(),Qt::IgnoreAspectRatio,Qt::SmoothTransformation);
    QPalette palette;
    palette.setBrush(QPalette::Background,QBrush(pixmap1));
    this->setPalette(palette);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_pushButton_clicked()
{
    cout<<"clicked"<<endl;
    this->hide();
    dialog.show();
}

void MainWindow::on_pushButton_2_clicked()
{
    this->hide();
    form.show();
}
