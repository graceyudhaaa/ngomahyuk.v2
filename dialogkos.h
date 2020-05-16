#ifndef DIALOGKOS_H
#define DIALOGKOS_H

#include <QDialog>

namespace Ui {
class DialogKos;
}

class DialogKos : public QDialog
{
    Q_OBJECT

public:
    explicit DialogKos(QWidget *parent = nullptr);
    ~DialogKos();

private:
    Ui::DialogKos *ui;
};

#endif // DIALOGKOS_H
