inherited frmPadrao1: TfrmPadrao1
  Caption = 'Cadastro de Fornecedores'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited PageControl1: TPageControl
    ActivePage = TabSheet2
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 787
      ExplicitHeight = 370
    end
    inherited TabSheet2: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 787
      ExplicitHeight = 370
      inherited ScrollBox1: TScrollBox
        ExplicitTop = 35
        object Label1: TLabel
          Left = 32
          Top = 24
          Width = 102
          Height = 13
          Caption = 'C'#243'digo do Fornecedir'
        end
        object Label2: TLabel
          Left = 32
          Top = 51
          Width = 100
          Height = 13
          Caption = 'Nome do Fornecedor'
        end
        object Label3: TLabel
          Left = 32
          Top = 78
          Width = 92
          Height = 13
          Caption = 'CPF do Fornecedor'
        end
        object Label4: TLabel
          Left = 34
          Top = 105
          Width = 19
          Height = 13
          Caption = 'CEP'
        end
        object Label5: TLabel
          Left = 32
          Top = 132
          Width = 21
          Height = 13
          Caption = 'RUA'
        end
        object Label6: TLabel
          Left = 32
          Top = 159
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object Telefone: TLabel
          Left = 312
          Top = 78
          Width = 42
          Height = 13
          Caption = 'Telefone'
        end
        object Label8: TLabel
          Left = 34
          Top = 186
          Width = 19
          Height = 18
          Caption = 'UF'
        end
        object ed_codigo: TEdit
          Left = 152
          Top = 21
          Width = 121
          Height = 21
          TabOrder = 0
          Text = 'ed_codigo'
        end
        object ed_nome: TEdit
          Left = 152
          Top = 48
          Width = 121
          Height = 21
          TabOrder = 1
          Text = 'Edit1'
        end
        object ed_cpf: TEdit
          Left = 152
          Top = 75
          Width = 121
          Height = 21
          TabOrder = 2
          Text = 'Edit1'
        end
        object ed_cep: TEdit
          Left = 152
          Top = 102
          Width = 121
          Height = 21
          TabOrder = 3
          Text = 'Edit1'
        end
        object ed_telefone: TEdit
          Left = 368
          Top = 75
          Width = 121
          Height = 21
          TabOrder = 4
          Text = 'Edit1'
        end
        object ed_rua: TEdit
          Left = 152
          Top = 129
          Width = 121
          Height = 21
          TabOrder = 5
          Text = 'Edit1'
        end
        object ed_cidade: TEdit
          Left = 152
          Top = 156
          Width = 121
          Height = 21
          TabOrder = 6
          Text = 'Edit1'
        end
        object ed_uf: TEdit
          Left = 152
          Top = 183
          Width = 121
          Height = 21
          TabOrder = 7
          Text = 'Edit1'
        end
        object ed_obs: TMemo
          Left = 152
          Top = 232
          Width = 185
          Height = 89
          Lines.Strings = (
            'ed_obs')
          TabOrder = 8
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 736
    Top = 56
  end
  inherited ImageList1: TImageList
    Left = 736
    Top = 104
    Bitmap = {
      494C0101060008004C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003B46E200616B
      F9003842E000000000000000000000000000000000000000000000000000616B
      F900616BF900000000000000000000000000000000000000000000000000DFDF
      F4006E6FD100556EE2007294F50082A7FE0082A7FE007294F500556EE2006D6D
      D100DFDFF4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003A44E1005660F1007E87
      FE00626CF90000000000000000000000000000000000000000003842E0007E87
      FE00737CFE003A44E10000000000000000000000000000000000000000003D42
      C600536CE6007396FB007090F9007090FA007090FA007090F9007396FB00526B
      E4003D42C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000464FE7005961F1006B74
      FE007882FE00616BF9003943E1000000000000000000616BF900828CFE006B74
      FE00626BF800464FE7003741DF000000000000000000E3E3F600393DC500546E
      F300556EF200313FD1003939BA00D5D5F200D7D7F2006767CC00383FC8005672
      F4005670F400393DC500E3E3F600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003741DF004851E800646C
      F9006A73FD007B85FE005D67F700000000003B46E2007B85FE00747DFE00646C
      F9005C64F3003741DF000000000000000000000000006B6DD0003D4DE0005A73
      F1004E65F0003E4FE2004245C800000000000000000000000000D0D0EF003B4B
      DE004D64F2003D4DE0006B6DD000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004750
      E7005860F100616AF700646DF9006770FB006770FB00616AF7005D65F4004750
      E7003741DF00000000000000000000000000000000002D37D9003A49EE00303A
      D000556BE6003848EC003A4AED002C2DC000CECEF0000000000000000000D0D0
      F0003035C8003B4BEE002D37D900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003640
      DE00424AE300575FF0005A62F2005C64F3005C64F300575FF0004E55E9003640
      DE0000000000000000000000000000000000000000002F3AE700313FEC003B3B
      C4003B3FCB004051ED002F3AEA002B36E1002D30C60000000000000000000000
      00006768D100313DEC002F3AE700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000575FF0005A62F2005C64F3005C64F300575FF0003640DE000000
      00000000000000000000000000000000000000000000252AE800242AE700D7D8
      F600000000003037D100272FE200242AE600242AE8002B32D000CED0F4000000
      0000D8D9F600242AE700252AE800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003640DE00575FF0005A62F2005C64F3005C64F300575FF0004E55E9000000
      000000000000000000000000000000000000000000001E23E7001E23E600D8DA
      F70000000000CED0F4002D34D6001E23E6001E23E6001E23E0003138D5000000
      0000D7D9F7001E23E6001E23E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004750
      E7005860F100616AF700646DF9006770FB006770FB00616AF7005D65F4004750
      E7003741DF00000000000000000000000000000000001A1CE4001A1AE5006F78
      E800000000000000000000000000313CDF00171BE1001617E2001617E4003E48
      E1004652E1001617E400171AE400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003741DF005A62
      F200616AF7006D76FE00717BFE003B46E2006B74FE006D76FE00666FFA005A62
      F2004851E800000000000000000000000000000000001B22E2002224E600303A
      E300D4D7FA000000000000000000D0D3F800323FE3001414E2001414E200171A
      E2001B23E1001A1AE5001E26E200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000464FE7005961F1006B74
      FE007882FE00616BF9003943E1000000000000000000616BF900828CFE006B74
      FE00626BF800464FE7003741DF000000000000000000747FF1001E26E6002327
      E600161AE400D4D8FC000000000000000000000000004855EC00171BE5001414
      E200171AE4002A35E800737EF100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004C54EA006169F600757F
      FE00848DFE003842E0000000000000000000000000003842E000636DFA00757F
      FE006972FC004C54EA003842E0000000000000000000E6E8FD003E4EF0004D60
      ED002B33E7003340EC007480F500DADEFD00D9DDFD004A5BF1001D27E8001C1F
      E500404DEA004150F000E6E8FD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003B46E200616B
      F9003842E000000000000000000000000000000000000000000000000000616B
      F900616BF9000000000000000000000000000000000000000000000000004051
      F400313EED007B99F400637CF0003947E9003743E900566CED00728EF2004154
      EE004254F5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003A44
      E200000000000000000000000000000000000000000000000000000000003A44
      E2003B46E200000000000000000000000000000000000000000000000000E2E5
      FE007884FB004054F0005E75F1008AA9F70088A8F5006681F2004D65F3007884
      FB00E2E5FE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000058A4710058A4710058A4710058A4710058A4710058A471000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000445005457830076799C00B9BBCC00D8D9E3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E1DC
      EB00D5CCE200F9F8FB0000000000000000000000000000000000000000000000
      00000000000056A26C0084D5B1005ED09D005ED09D0070C79C0053A06A000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000A317D000C0D0F00001156004F82C7005A8DD2006699DE006598DD006497
      DC006295DA00426EB3002E55990000125700000000003D3D3D0041414100A5A5
      A500ADADAD00A8A8A800A6A6A600A2A2A200A0A0A0009D9D9D009A9A9A009A9A
      9A00919191003D3D3D0035353500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8F8F800AAA8B200866A
      B300977BBF008164B100836DB400000000000000000000000000000000000000
      00000000000053A069008CD8B60062D19F0062D19F0073C89E00509E67000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000C3582000E0F1200001861003164A800396CB000487BBE005184C8005A8D
      D2005E91D6005689CE004679BD000019620000000000949494004B4B4B00128B
      F300128BF300128BF300128BF300128BF300128BF300128BF300128BF300128B
      F300128BF3007F7F7F0050505000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEDDDC00C3C3C3009290
      9400BAB1CA009277CC008067BE00000000000000000000000000000000000000
      0000000000004D9A600097DDBE006CD3A5006CD3A5007ACBA2004A985E000000
      0000000000000000000000000000000000000000000000000000F9FCFA000000
      0000113F8B001313170000226D002A5DA1002B5EA2002B5EA2003363A900305E
      A8002B5EA2002B5EA2002B5CA00000236E00000000003E3E3E0041414100F0F0
      F00000000000FDFDFD00FAFAFA00F3F3F300F0F0F000EAEAEA00E7E7E700E7E7
      E700D5D5D5003030300021212100000000000000000000000000000000000000
      0000000000000000000000000000F9FDFF0083C8F400449EE30086ACCE00ABAB
      AF0091919400A8A6B1007D6FD900000000000000000000000000000000000000
      00000000000049975C0099DEC00072D5A80072D5A8007FCBA50046955A000000
      0000000000000000000000000000000000000000000000000000002FE6000000
      00001342900014161A00002470002A5DA1002B5EA2002A5DA1002E5CA2002E5C
      A5002B5EA2002B5EA2002655990000257100000000004242420044444400EFEF
      EF000000000000000000FEFEFE00F8F8F800F5F5F500EFEFEF00ECECEC00ECEC
      EC00D9D9D9003030300021212100000000000000000000000000000000000000
      00000000000000000000000000008CCDF4002099EE002C9CFC003BA3FE00E4EA
      F400AEAEB1006F6F71005D5A8C000000000058A4710056A26C0053A069004D9A
      600049975C003E8E500098DEBF007ED8B0007ED8B0008ACFAB003E8E50004695
      5A004A985E00509E670053A06A0058A471000000000000000000002FE6000109
      CB00184A9A00191B200000287500295CA0002B5EA20024529700204A90002B57
      9F002B5EA2002B5DA1001E488C0001297600000000004C4C4C004B4B4B00EFEF
      EF0000000000000000000000000000000000FEFEFE00F8F8F800F5F5F500F5F5
      F500E2E2E2002F2F2F0021212100000000000000000000000000000000000000
      000000000000000000008CCDF500289AF500319CFA0042A4FF004FAEFE006CC5
      F8006BA9C7002B2B2B005C5C5C000000000058A4710074CAA00072C89D0078CB
      A1007ECBA40088CFAA008ED0AD0085DAB40085DAB40077C9A00072C89D0078CB
      A1007ECBA40088CFAA008ED0AD0058A471000033EE000033EE00002FE600095E
      FE000400B4001B1E2300002A7800295CA000295B9F0019408500163C84002854
      9D002B5EA2002350940013387B00012B790000000000515151004E4E4E00EFEF
      EF000000000000000000000000000000000000000000FDFDFD00FAFAFA00FBFB
      FB00E6E6E6002F2F2F0021212100000000000000000000000000000000000000
      0000000000008ECEF4001E99EE00309CFA00389FFE004DADFF0059B8FA0071CC
      F6008DD5F40079797800FEFEFE000000000058A4710093DDBC0093DDBC0093DD
      BC0093DDBC0093DDBC0093DDBC0093DDBC0093DDBC0093DDBC0093DDBC0093DD
      BC0093DDBC0093DDBC0093DDBC0058A471000033EE004089FF002874FF00095E
      FE000055FE0007008100002E7D0014266900477ABF00477ABF00477ABF00477A
      BF00477ABF00477ABF00477ABF00012F7E00000000005B5B5B0055555500F0F0
      F000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F0002F2F2F0021212100000000000000000000000000000000000000
      000097D1F600269BF4002F9DFA0041A4FF004DACFF0063C0F7006FC9F5008FDB
      FE00B7E4FF0000000000000000000000000058A4710099DFC00099DFC00099DF
      C00099DFC00099DFC00099DFC00099DFC00099DFC00099DFC00099DFC00099DF
      C00099DFC00099DFC00099DFC00058A471000033EE003F87FF002876FF00095D
      FE000055FE0007008100002F7F005287D100315EAA00305EA9003361AC00315F
      AA00305DA800305EA800305DA90001308000000000006060600059595900E9E9
      E900FCFCFC00F4F4F400F4F4F400F5F5F500F5F5F500F5F5F500F5F5F5000000
      0000EAEAEA003131310022222200000000000000000000000000000000009ED5
      F6001F9BEE002E9DF800369FFD0049ABFF0055B4FC006BC8F6007CD3F700B1E2
      FF000000000000000000000000000000000058A4710094DDBD0098DEBF0099DE
      C00097DDBE008CD8B60084D5B100A7E3C800A7E3C8007AD0A6009ADFC00099DE
      C00097DDBE008CD8B60084D5B10058A471000033EE000033EE00002CE600095D
      FE000400B400272A32000033840024579B00275A9E00275A9E002F60A4002B57
      A000275A9E00275A9E002455990001348500000000006B6B6B006A6A6A006262
      6200606060004E4E4E004A4A4A0045454500424242003D3D3D003A3A3A003737
      370037373700343434002D2D2D00000000000000000000000000C2E6FA0030A3
      F3002498F6003CA1FF0046A8FF005EBBF90069C5F6008EDAFC00A8E0FF000000
      00000000000000000000000000000000000058A4710053A06A00509E67004A98
      5E0046955A003E8E50008CD8B600ADE5CC00ADE5CC0080D1A9003E8E50004997
      5C004D9A600053A0690056A26C0058A471000000000000000000002CE6000109
      CB002560B100292C35000035860024579B0026599D0025589C002C5BA0002D5B
      A40026599D0024579B00204F92000136870000000000707070006A6A6A005E5E
      5E005A5A5A0060606000616161005959590055555500535353004F4F4F004242
      42003B3B3B0038383800333333000000000000000000D5F1FF00B0E5FF00A1DD
      FD0079C8FD0044A5FF0051B1FD0068C4F60079CFF500A6E0FF00F9FDFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000049975C0097DDBE00B9E8D300B9E8D3008CD2AE0046955A000000
      0000000000000000000000000000000000000000000000000000002CE6000000
      00002560B1002D313A0000388B002154980024579B0020509300255097003563
      AF0023569A0021539700163D800001398C000000000075757500414141003030
      3000202020000000000000000000ECECEC00EAEAEA00B1B1B100B3B3B300C7C7
      C7008D8D8D00404040003D3D3D000000000000000000B4E8FF00BCEDFF00D6F8
      FF00D8F8FF0098DAFE006EC8F7008DDBFC00A1DEFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004D9A600099DEC000BEE9D600BEE9D60091D3B1004A985E000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002560B1002F323D0000398C002053970023569900163F81001C448B003868
      B40022559900184285000C2B6C00013A8D00000000007A7A7A00444444003434
      340025252500F7F7F700FAFAFA00E3E3E300E6E6E6005D5D5D0070707000C3C3
      C3008989890044444400414141000000000000000000A6DBF200C0F5FF00C5F2
      FF00CAF4FF00BAEDFF0090DAFB009DDCFF00EDF9FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000053A0690098DEBF00C7EBDB00C7EBDB009BD4B500509E67000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002560B10032373F00003C900025519700315FA700487AC800578AD9007CAF
      F40084B7FC007AADF2006A9DE200013D91000000000082828200484848003434
      340027272700F5F5F500FAFAFA00E2E2E200E6E6E6005151510067676700C2C2
      C2008C8C8C004C4C4C004A4A4A000000000000000000948B8700787A7A00B6F1
      FF00B3EEFF00B5EFFF00A7E2FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000056A26C0094DDBD00CAECDD00CAECDD009ED5B70053A06A000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002560B10034384100003D910070A3E8007BAEF30088BBFF0085B8FD0083B6
      FB0078ACF200497FCA003069B500013E92000000000088888800454545002F2F
      2F00212121000000000000000000ECECEC00EAEAEA009B9B9B00A2A2A200C6C6
      C60093939300505050004E4E4E000000000000000000898887004B45440095D1
      E400A4EBFF0097E1FF00DBF3FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000058A4710058A4710058A4710058A4710058A4710058A471000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000044396005F87BC0083A2CB00CBD8EA00EDF2F8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFBFA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000C7E7E00700000000
      87C3E007000000008181800100000000810381C100000000E007806100000000
      E00F807100000000F81F881100000000F01F881100000000E0078E0100000000
      C00786010000000081818381000000008381800100000000C7E7E00700000000
      EFE7E00700000000FFFFFFFF00000000F81FFC1FFFFFFFE3F81FF0008001FF81
      F81FF0008001FF81F81FD0008801FE01F81FD0008C01FE010000C0008F01FC01
      000000008F81F801000000008FF1F007000000008011E00F000000008001C01F
      0000C0008001801FF81FD0008601807FF81FF0008001807FF81FF000800181FF
      F81FF000860181FFF81FFC1FFFFFBFFF00000000000000000000000000000000
      000000000000}
  end
  inherited dsCadastro: TDataSource
    OnDataChange = dsCadastroDataChange
    Left = 736
    Top = 160
  end
  inherited MainMenu1: TMainMenu
    Left = 736
    Top = 216
  end
end
