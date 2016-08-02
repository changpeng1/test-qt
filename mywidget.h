#ifndef MYWIDGET_H
#define MYWIDGET_H

#include <QWidget>
#include <QKeyEvent>
#include <QMap>
#include <QPushButton>
#include <QEvent>
namespace Ui {
class MyWidget;
}

class MyWidget : public QWidget
{
    Q_OBJECT

public:
    explicit MyWidget(QWidget *parent = 0);
    ~MyWidget();
    void keyPressEvent(QKeyEvent *);
    void keyReleaseEvent(QKeyEvent *event);
    void change_focus(int key);
private slots:
    void on_pushButton_clicked();

    void on_pushButton_2_clicked();
bool eventFilter(QObject *obj, QEvent *event);
private:
    Ui::MyWidget *ui;
private:
    QMap<int,QPushButton*> m;
    int current_focus;
};

#endif // MYWIDGET_H
