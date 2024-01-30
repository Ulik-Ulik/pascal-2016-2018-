procedure InitializeComponent;
    begin
        self.TextBox1 := new System.Windows.Forms.TextBox();
        self.label1 := new System.Windows.Forms.Label();
        self.groupBox1 := new System.Windows.Forms.GroupBox();
        self.radioButton2 := new System.Windows.Forms.RadioButton();
        self.radioButton1 := new System.Windows.Forms.RadioButton();
        self.label5 := new System.Windows.Forms.Label();
        self.numericUpDown1 := new System.Windows.Forms.NumericUpDown();
        self.checkBox1 := new System.Windows.Forms.CheckBox();
        self.numericUpDown2 := new System.Windows.Forms.NumericUpDown();
        self.label2 := new System.Windows.Forms.Label();
        self.doubleClik := new System.Windows.Forms.ListBox();
        self.label3 := new System.Windows.Forms.Label();
        self.button2 := new System.Windows.Forms.Button();
        self.button1 := new System.Windows.Forms.Button();
        self.button3 := new System.Windows.Forms.Button();
        self.button4 := new System.Windows.Forms.Button();
        self.button5 := new System.Windows.Forms.Button();
        self.button6 := new System.Windows.Forms.Button();
        self.button7 := new System.Windows.Forms.Button();
        self.listBox1 := new System.Windows.Forms.ListBox();
        self.label4 := new System.Windows.Forms.Label();
        self.label6 := new System.Windows.Forms.Label();
        self.textBox2 := new System.Windows.Forms.TextBox();
        self.textBox3 := new System.Windows.Forms.TextBox();
        self.groupBox1.SuspendLayout();
        (System.ComponentModel.ISupportInitialize(self.numericUpDown1)).BeginInit();
        (System.ComponentModel.ISupportInitialize(self.numericUpDown2)).BeginInit();
        self.SuspendLayout();
        // 
        // TextBox1
        // 
        self.TextBox1.Font := new System.Drawing.Font('Comic Sans MS', 13.8, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.TextBox1.Location := new System.Drawing.Point(5, 42);
        self.TextBox1.Name := 'TextBox1';
        self.TextBox1.Size := new System.Drawing.Size(333, 33);
        self.TextBox1.TabIndex := 0;
        // 
        // label1
        // 
        self.label1.Font := new System.Drawing.Font('Comic Sans MS', 14.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label1.Location := new System.Drawing.Point(12, 9);
        self.label1.Name := 'label1';
        self.label1.Size := new System.Drawing.Size(174, 30);
        self.label1.TabIndex := 3;
        self.label1.Text := 'Фамилия';
        // 
        // groupBox1
        // 
        self.groupBox1.BackColor := System.Drawing.Color.White;
        self.groupBox1.Controls.Add(self.radioButton2);
        self.groupBox1.Controls.Add(self.radioButton1);
        self.groupBox1.Font := new System.Drawing.Font('Comic Sans MS', 13.8, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.groupBox1.Location := new System.Drawing.Point(12, 256);
        self.groupBox1.Name := 'groupBox1';
        self.groupBox1.Size := new System.Drawing.Size(116, 161);
        self.groupBox1.TabIndex := 8;
        self.groupBox1.TabStop := false;
        self.groupBox1.Text := 'Пол';
        // 
        // radioButton2
        // 
        self.radioButton2.Location := new System.Drawing.Point(7, 89);
        self.radioButton2.Name := 'radioButton2';
        self.radioButton2.Size := new System.Drawing.Size(95, 34);
        self.radioButton2.TabIndex := 1;
        self.radioButton2.TabStop := true;
        self.radioButton2.Text := 'Ж';
        self.radioButton2.UseVisualStyleBackColor := true;
        // 
        // radioButton1
        // 
        self.radioButton1.Location := new System.Drawing.Point(7, 40);
        self.radioButton1.Name := 'radioButton1';
        self.radioButton1.Size := new System.Drawing.Size(95, 34);
        self.radioButton1.TabIndex := 0;
        self.radioButton1.TabStop := true;
        self.radioButton1.Text := 'М';
        self.radioButton1.UseVisualStyleBackColor := true;
        // 
        // label5
        // 
        self.label5.Font := new System.Drawing.Font('Comic Sans MS', 13.8);
        self.label5.Location := new System.Drawing.Point(173, 256);
        self.label5.Name := 'label5';
        self.label5.Size := new System.Drawing.Size(161, 37);
        self.label5.TabIndex := 9;
        self.label5.Text := 'Возраст';
        self.label5.Click += label5_Click;
        // 
        // numericUpDown1
        // 
        self.numericUpDown1.Font := new System.Drawing.Font('Comic Sans MS', 13.8, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.numericUpDown1.Location := new System.Drawing.Point(173, 299);
        self.numericUpDown1.Maximum := new System.Decimal(new System.Int32[4](120, 0, 0, 0));
        self.numericUpDown1.Name := 'numericUpDown1';
        self.numericUpDown1.Size := new System.Drawing.Size(161, 33);
        self.numericUpDown1.TabIndex := 10;
        self.numericUpDown1.ValueChanged += numericUpDown1_ValueChanged;
        // 
        // checkBox1
        // 
        self.checkBox1.BackColor := System.Drawing.Color.White;
        self.checkBox1.Font := new System.Drawing.Font('Comic Sans MS', 13.8, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(0)));
        self.checkBox1.Location := new System.Drawing.Point(12, 436);
        self.checkBox1.Name := 'checkBox1';
        self.checkBox1.Size := new System.Drawing.Size(263, 37);
        self.checkBox1.TabIndex := 11;
        self.checkBox1.Text := 'Дети';
        self.checkBox1.UseVisualStyleBackColor := false;
        self.checkBox1.CheckedChanged += checkBox1_CheckedChanged;
        // 
        // numericUpDown2
        // 
        self.numericUpDown2.Font := new System.Drawing.Font('Comic Sans MS', 13.8, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.numericUpDown2.Location := new System.Drawing.Point(12, 516);
        self.numericUpDown2.Name := 'numericUpDown2';
        self.numericUpDown2.Size := new System.Drawing.Size(161, 33);
        self.numericUpDown2.TabIndex := 12;
        self.numericUpDown2.Visible := false;
        self.numericUpDown2.ValueChanged += numericUpDown2_ValueChanged;
        // 
        // label2
        // 
        self.label2.Font := new System.Drawing.Font('Comic Sans MS', 13.8);
        self.label2.Location := new System.Drawing.Point(12, 487);
        self.label2.Name := 'label2';
        self.label2.Size := new System.Drawing.Size(161, 26);
        self.label2.TabIndex := 13;
        self.label2.Text := 'Количество';
        self.label2.Visible := false;
        self.label2.Click += label2_Click;
        // 
        // doubleClik
        // 
        self.doubleClik.Font := new System.Drawing.Font('Comic Sans MS', 13.8, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(0)));
        self.doubleClik.ForeColor := System.Drawing.SystemColors.InactiveCaptionText;
        self.doubleClik.FormattingEnabled := true;
        self.doubleClik.ItemHeight := 24;
        self.doubleClik.Items.AddRange(new System.Object[10]('программист', 'учитель', 'предприниматель', 'ученый ', 'парикмахер', 'врач', 'медсестра/медбрат', 'водитель', 'пожарный', 'летчик'));
        self.doubleClik.Location := new System.Drawing.Point(5, 589);
        self.doubleClik.Name := 'doubleClik';
        self.doubleClik.ScrollAlwaysVisible := true;
        self.doubleClik.Size := new System.Drawing.Size(340, 148);
        self.doubleClik.TabIndex := 14;
        self.doubleClik.Click += clik_Click;
        self.doubleClik.SelectedIndexChanged += clik_SelectedIndexChanged;
        self.doubleClik.DoubleClick += clik_DoubleClick;
        // 
        // label3
        // 
        self.label3.Font := new System.Drawing.Font('Comic Sans MS', 13.8);
        self.label3.Location := new System.Drawing.Point(12, 552);
        self.label3.Name := 'label3';
        self.label3.Size := new System.Drawing.Size(161, 31);
        self.label3.TabIndex := 15;
        self.label3.Text := 'Должность';
        // 
        // button2
        // 
        self.button2.BackColor := System.Drawing.Color.White;
        self.button2.Font := new System.Drawing.Font('Comic Sans MS', 13.8, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button2.Location := new System.Drawing.Point(710, 29);
        self.button2.Name := 'button2';
        self.button2.Size := new System.Drawing.Size(222, 75);
        self.button2.TabIndex := 17;
        self.button2.Text := 'считать';
        self.button2.UseVisualStyleBackColor := false;
        self.button2.Click += button2_Click;
        // 
        // button1
        // 
        self.button1.BackColor := System.Drawing.Color.White;
        self.button1.Font := new System.Drawing.Font('Comic Sans MS', 13.8, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button1.Location := new System.Drawing.Point(420, 29);
        self.button1.Name := 'button1';
        self.button1.Size := new System.Drawing.Size(222, 75);
        self.button1.TabIndex := 18;
        self.button1.Text := 'сохранить';
        self.button1.UseVisualStyleBackColor := false;
        self.button1.Click += button1_Click;
        // 
        // button3
        // 
        self.button3.BackColor := System.Drawing.Color.White;
        self.button3.Font := new System.Drawing.Font('Comic Sans MS', 10.2, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button3.Location := new System.Drawing.Point(358, 542);
        self.button3.Name := 'button3';
        self.button3.Size := new System.Drawing.Size(119, 46);
        self.button3.TabIndex := 19;
        self.button3.Text := 'добавить';
        self.button3.UseVisualStyleBackColor := false;
        self.button3.Click += button3_Click;
        // 
        // button4
        // 
        self.button4.BackColor := System.Drawing.Color.White;
        self.button4.Font := new System.Drawing.Font('Comic Sans MS', 10.2, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button4.Location := new System.Drawing.Point(483, 542);
        self.button4.Name := 'button4';
        self.button4.Size := new System.Drawing.Size(119, 46);
        self.button4.TabIndex := 20;
        self.button4.Text := 'удалить';
        self.button4.UseVisualStyleBackColor := false;
        self.button4.Click += button4_Click;
        // 
        // button5
        // 
        self.button5.BackColor := System.Drawing.Color.White;
        self.button5.Font := new System.Drawing.Font('Comic Sans MS', 10.2, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button5.Location := new System.Drawing.Point(608, 542);
        self.button5.Name := 'button5';
        self.button5.Size := new System.Drawing.Size(119, 46);
        self.button5.TabIndex := 21;
        self.button5.Text := 'втавить';
        self.button5.UseVisualStyleBackColor := false;
        self.button5.Click += button5_Click;
        // 
        // button6
        // 
        self.button6.BackColor := System.Drawing.Color.White;
        self.button6.Font := new System.Drawing.Font('Comic Sans MS', 9.2);
        self.button6.Location := new System.Drawing.Point(733, 543);
        self.button6.Name := 'button6';
        self.button6.Size := new System.Drawing.Size(135, 46);
        self.button6.TabIndex := 22;
        self.button6.Text := 'редактировать';
        self.button6.UseVisualStyleBackColor := false;
        self.button6.Click += button6_Click;
        // 
        // button7
        // 
        self.button7.BackColor := System.Drawing.Color.White;
        self.button7.Enabled := false;
        self.button7.Font := new System.Drawing.Font('Comic Sans MS', 10.2, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.button7.Location := new System.Drawing.Point(874, 543);
        self.button7.Name := 'button7';
        self.button7.Size := new System.Drawing.Size(119, 46);
        self.button7.TabIndex := 23;
        self.button7.Text := 'изменить';
        self.button7.UseVisualStyleBackColor := false;
        self.button7.Click += button7_Click;
        // 
        // listBox1
        // 
        self.listBox1.Font := new System.Drawing.Font('Comic Sans MS', 13.8, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.listBox1.FormattingEnabled := true;
        self.listBox1.ItemHeight := 24;
        self.listBox1.Location := new System.Drawing.Point(358, 128);
        self.listBox1.Name := 'listBox1';
        self.listBox1.Size := new System.Drawing.Size(613, 388);
        self.listBox1.TabIndex := 24;
        // 
        // label4
        // 
        self.label4.Font := new System.Drawing.Font('Comic Sans MS', 14.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label4.Location := new System.Drawing.Point(12, 78);
        self.label4.Name := 'label4';
        self.label4.Size := new System.Drawing.Size(174, 30);
        self.label4.TabIndex := 25;
        self.label4.Text := 'Имя';
        // 
        // label6
        // 
        self.label6.Font := new System.Drawing.Font('Comic Sans MS', 14.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label6.Location := new System.Drawing.Point(12, 147);
        self.label6.Name := 'label6';
        self.label6.Size := new System.Drawing.Size(174, 30);
        self.label6.TabIndex := 26;
        self.label6.Text := 'Отчество';
        // 
        // textBox2
        // 
        self.textBox2.Font := new System.Drawing.Font('Comic Sans MS', 13.8, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.textBox2.Location := new System.Drawing.Point(5, 111);
        self.textBox2.Name := 'textBox2';
        self.textBox2.Size := new System.Drawing.Size(333, 33);
        self.textBox2.TabIndex := 27;
        // 
        // textBox3
        // 
        self.textBox3.Font := new System.Drawing.Font('Comic Sans MS', 13.8, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.textBox3.Location := new System.Drawing.Point(5, 180);
        self.textBox3.Name := 'textBox3';
        self.textBox3.Size := new System.Drawing.Size(333, 33);
        self.textBox3.TabIndex := 28;
        // 
        // Form1
        // 
        self.BackColor := System.Drawing.Color.FromArgb((System.Int32((System.Byte(226)))), (System.Int32((System.Byte(248)))), (System.Int32((System.Byte(239)))));
        self.ClientSize := new System.Drawing.Size(1005, 749);
        self.Controls.Add(self.textBox3);
        self.Controls.Add(self.textBox2);
        self.Controls.Add(self.label6);
        self.Controls.Add(self.label4);
        self.Controls.Add(self.listBox1);
        self.Controls.Add(self.button7);
        self.Controls.Add(self.button6);
        self.Controls.Add(self.button5);
        self.Controls.Add(self.button4);
        self.Controls.Add(self.button3);
        self.Controls.Add(self.button1);
        self.Controls.Add(self.button2);
        self.Controls.Add(self.label3);
        self.Controls.Add(self.doubleClik);
        self.Controls.Add(self.label2);
        self.Controls.Add(self.numericUpDown2);
        self.Controls.Add(self.checkBox1);
        self.Controls.Add(self.numericUpDown1);
        self.Controls.Add(self.label5);
        self.Controls.Add(self.groupBox1);
        self.Controls.Add(self.label1);
        self.Controls.Add(self.TextBox1);
        self.Name := 'Form1';
        self.Text := 'Form1';
        self.Load += Form1_Load;
        self.groupBox1.ResumeLayout(false);
        (System.ComponentModel.ISupportInitialize(self.numericUpDown1)).EndInit();
        (System.ComponentModel.ISupportInitialize(self.numericUpDown2)).EndInit();
        self.ResumeLayout(false);
        self.PerformLayout();
    end;
