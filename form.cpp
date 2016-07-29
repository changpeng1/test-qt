#include "form.h"
#include "ui_form.h"
#include "mainwindow.h"
extern MainWindow *w;
Form::Form(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::Form)
{
    ui->setupUi(this);
    this->setAutoFillBackground(true);
   //QPixmap pixmap("/home/changpeng/untitled1/a.png");
    QPixmap pixmap("/home/changpeng/Downloads/a.jpg");
    QPixmap pixmap1=pixmap.scaled(this->size(),Qt::IgnoreAspectRatio,Qt::SmoothTransformation);
    QPalette palette;
    palette.setBrush(QPalette::Background,QBrush(pixmap1));
    this->setPalette(palette);


    ui->frame->setAutoFillBackground(true);
    QPixmap fpixmap("/home/changpeng/Downloads/a.jpg");
    QPixmap fpixmap1=fpixmap.scaled(ui->frame->size(),Qt::IgnoreAspectRatio,Qt::SmoothTransformation);
    QPalette fpalette;
    fpalette.setBrush(QPalette::Background,QBrush(fpixmap1));
    ui->frame->setPalette(fpalette);
}

Form::~Form()
{
    delete ui;
}

void Form::on_pushButton_clicked()
{
    this->close();
    w->show();
}

void Form::on_pushButton_2_clicked()
{
    this->close();
}
