Unit Unit1;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  Form1 = class(Form)
    procedure numericUpDown1_ValueChanged(sender: Object; e: EventArgs);
    procedure label5_Click(sender: Object; e: EventArgs);
    procedure clik_Click(sender: Object; e: EventArgs);
    procedure checkBox1_CheckedChanged(sender: Object; e: EventArgs);
    procedure label2_Click(sender: Object; e: EventArgs);
    procedure button1_Click(sender: Object; e: EventArgs);
    procedure button2_Click(sender: Object; e: EventArgs);
    procedure button3_Click(sender: Object; e: EventArgs);
    procedure button4_Click(sender: Object; e: EventArgs);
    procedure button5_Click(sender: Object; e: EventArgs);
    procedure button6_Click(sender: Object; e: EventArgs);
    procedure button7_Click(sender: Object; e: EventArgs);
    procedure clik_SelectedIndexChanged(sender: Object; e: EventArgs);
    procedure clik_DoubleClick(sender: Object; e: EventArgs);
    procedure Form1_Load(sender: Object; e: EventArgs);
    procedure numericUpDown2_ValueChanged(sender: Object; e: EventArgs);
  {$region FormDesigner}
  private
    {$resource Unit1.Form1.resources}
    TextBox1: TextBox;
    label1: &Label;
    groupBox1: GroupBox;
    label5: &Label;
    radioButton2: RadioButton;
    radioButton1: RadioButton;
    numericUpDown1: NumericUpDown;
    checkBox1: CheckBox;
    numericUpDown2: NumericUpDown;
    label2: &Label;
    doubleClik: ListBox;
    label3: &Label;
    button2: Button;
    button1: Button;
    button4: Button;
    button5: Button;
    button6: Button;
    button7: Button;
    listBox1: ListBox;
    label4: &Label;
    label6: &Label;
    textBox2: TextBox;
    textBox3: TextBox;
    button3: Button;
    {$include Unit1.Form1.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;

implementation

procedure Form1.numericUpDown1_ValueChanged(sender: Object; e: EventArgs);
begin
  
end;

procedure Form1.label5_Click(sender: Object; e: EventArgs);
begin
  
end;

procedure Form1.clik_Click(sender: Object; e: EventArgs);
begin

end;

procedure Form1.checkBox1_CheckedChanged(sender: Object; e: EventArgs);
begin
if checkBox1.Checked then begin
                                 label2.Visible:=true;
                                 numericUpDown2.Visible:=true;
                                 end
                            else begin
                                 label2.Visible:=false;
                                 numericUpDown2.Visible:=false;
                                 numericUpDown2.Value:=0;
                                 end;
end;

procedure Form1.label2_Click(sender: Object; e: EventArgs);
begin
  
end;

procedure Form1.button1_Click(sender: Object; e: EventArgs);
var
cnt,cnt2,nmbr:integer;
blknt:string;
txbk:textfile;
begin
cnt:=0;
Assign(txbk,'D:\pruem na raboty\сохраняет список работников\список.txt');
Rewrite(txbk);
cnt2:=listbox1.Items.Count;
while cnt<cnt2 do begin
                   blknt:=listbox1.Items[cnt].ToString;
                   WriteLn(txbk,blknt);
                   cnt:=cnt+1;
                   end;
Closefile(txbk);
end;

procedure Form1.button2_Click(sender: Object; e: EventArgs);
var
cnt:integer;
blknt:string;
txbk:textfile;
begin
cnt:=0;
Assign(txbk,'D:\pruem na raboty\сохраняет список работников\список.txt');
Reset(txbk);
while not(eof(txbk)) do begin
                     ReadLn(txbk,blknt);
                     listBox1.Items.Add(blknt);
                     cnt:=cnt+1;
                     end;
end;

procedure Form1.button3_Click(sender: Object; e: EventArgs);
var 
nmbr:integer;
stroka,wr,kids:string;
begin
if radioButton1.Checked then begin
                             nmbr:=doubleClik.SelectedIndex;
                             kids:=numericUpDown2.Value.ToString;
                             wr:=doubleClik.Items[nmbr].ToString;
                             stroka:=TextBox1.text+' '+TextBox2.text+' '+TextBox3.text+' '+radioButton1.text+' '+real(numericUpDown1.Value)+' '+'дети: '+strtofloat(kids)+' '+wr+' ';
                             listBox1.Items.Add(stroka);
                             end
                        else begin
                             nmbr:=doubleClik.SelectedIndex;
                             kids:=numericUpDown2.Value.ToString;
                             wr:=doubleClik.Items[nmbr].ToString;
                             stroka:=TextBox1.text+' '+TextBox2.text+' '+TextBox3.text+' '+radioButton2.text+' '+real(numericUpDown1.Value)+' '+'дети: '+strtofloat(kids)+' '+wr+' ';
                             listBox1.Items.Add(stroka);
                             end;                     
end;

procedure Form1.button4_Click(sender: Object; e: EventArgs);
begin
listBox1.Items.RemoveAt(listBox1.SelectedIndex);  
end;

procedure Form1.button5_Click(sender: Object; e: EventArgs);
var
nmbr,nmbr2:integer;
stroka,wr,kids:string;
begin
nmbr:=0;
nmbr2:=listbox1.SelectedIndex;
if radioButton1.Checked then begin
                             nmbr:=doubleClik.SelectedIndex;
                             kids:=numericUpDown2.Value.ToString;
                             wr:=doubleClik.Items[nmbr].ToString;
                             stroka:=TextBox1.text+' '+TextBox2.text+' '+TextBox3.text+' '+radioButton1.text+' '+real(numericUpDown1.Value)+' '+'дети: '+strtofloat(kids)+' '+wr+' ';
                             listbox1.Items.Insert(nmbr2,stroka);
                             end
                        else begin
                             nmbr:=doubleClik.SelectedIndex;
                             kids:=numericUpDown2.Value.ToString;
                             wr:=doubleClik.Items[nmbr].ToString;
                             stroka:=TextBox1.text+' '+TextBox2.text+' '+TextBox3.text+' '+radioButton2.text+' '+real(numericUpDown1.Value)+' '+'дети: '+strtofloat(kids)+' '+wr+' ';
                             listbox1.Items.Insert(nmbr2,stroka);
                             end;      
  
end;

procedure Form1.button6_Click(sender: Object; e: EventArgs);
var
stroka:string;
nmbr2,cnt,lmt,lng:integer;
vls:array [1..8]of string;
begin
listBox1.Enabled:=false;
button1.Enabled:=false;
button2.Enabled:=false;
button3.Enabled:=false;
button4.Enabled:=false;
button5.Enabled:=false;
button6.Enabled:=false;
button7.Enabled:=true;
cnt:=1;
nmbr2:=0;
nmbr2:=listbox1.SelectedIndex;
stroka:=listbox1.Items[nmbr2].ToString;
lmt:=length(stroka);
while cnt<=8 do begin
                lng:=Pos(' ',stroka)-1;
                //WriteLn(lng);
                vls[cnt]:=Copy(stroka,1,lng);
                lng:=lng+1;
                delete(stroka,1,lng);
                cnt:=cnt+1; 
                end;
cnt:=1;
While cnt<=8 do begin
                WriteLn('!'+vls[cnt]+'!');
                cnt:=cnt+1;
                end;
Textbox1.Text:=vls[1];
Textbox2.Text:=vls[2];
Textbox3.Text:=vls[3];
if vls[4]='М' then begin
                   radioButton1.Checked:=true;
                   end
              else begin
                   radioButton2.Checked:=true;
                   end;
numericUpDown1.Text:=vls[5];                 
if vls[7]='0' then begin
                   checkBox1.Checked:=false;
                   numericUpDown2.Text:=vls[7];
                   end
              else begin
                   checkBox1.Checked:=true;
                   numericUpDown2.Text:=vls[7];
                   end;

                   

cnt:=0;
while cnt<10 do begin
                if doubleClik.Items[cnt].ToString=vls[8] then begin
                                                              doubleClik.SelectedIndex:=cnt;
                                                              end;
                cnt:=cnt+1;
                end;
end;

procedure Form1.button7_Click(sender: Object; e: EventArgs);
var
nmbr,nmbr2:integer;
stroka,wr,kids:string;
begin
listBox1.Enabled:=true;
button1.Enabled:=true;
button2.Enabled:=true;
button3.Enabled:=true;
button4.Enabled:=true;
button5.Enabled:=true;
button6.Enabled:=true;
button7.Enabled:=false;
nmbr:=0;
nmbr2:=listbox1.SelectedIndex;
if radioButton1.Checked then begin
                             nmbr:=doubleClik.SelectedIndex;
                             kids:=numericUpDown2.Value.ToString;
                             wr:=doubleClik.Items[nmbr].ToString;
                             stroka:=TextBox1.text+' '+TextBox2.text+' '+TextBox3.text+' '+radioButton1.text+' '+real(numericUpDown1.Value)+' '+'дети: '+strtofloat(kids)+' '+wr+' ';
                             listbox1.Items[nmbr2]:=stroka;
                             end
                        else begin
                             nmbr:=doubleClik.SelectedIndex;
                             kids:=numericUpDown2.Value.ToString;
                             wr:=doubleClik.Items[nmbr].ToString;
                             stroka:=TextBox1.text+' '+TextBox2.text+' '+TextBox3.text+' '+radioButton2.text+' '+real(numericUpDown1.Value)+' '+'дети: '+strtofloat(kids)+' '+wr+' ';
                             listbox1.Items[nmbr2]:=stroka;
                             end;
  
end;

procedure Form1.clik_SelectedIndexChanged(sender: Object; e: EventArgs);
begin
  
end;

procedure Form1.clik_DoubleClick(sender: Object; e: EventArgs);
begin

end;

procedure Form1.Form1_Load(sender: Object; e: EventArgs);
begin
  
end;

procedure Form1.numericUpDown2_ValueChanged(sender: Object; e: EventArgs);
begin
  
end;

end.
