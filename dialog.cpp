#include "dialog.h"
#include "ui_dialog.h"
#include "mainwindow.h"
extern MainWindow* w;
Dialog::Dialog(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::Dialog)
{
    ui->setupUi(this);
    this->setAutoFillBackground(true);
    QPixmap pixmap("/home/changpeng/Downloads/b.jpeg");
    QPixmap pixmap1=pixmap.scaled(this->size(),Qt::IgnoreAspectRatio,Qt::SmoothTransformation);
    QPalette palette;
    palette.setBrush(QPalette::Background,QBrush(pixmap1));
    this->setPalette(palette);
}

Dialog::~Dialog()
{
    delete ui;
}

void Dialog::on_pushButton_clicked()
{
    close();
}

void Dialog::on_pushButton_2_clicked()
{
    close();
    w->show();
}
