{******************************************************************************}
{ Projeto: Componente ACBrNFSe                                                 }
{ Biblioteca multiplataforma de componentes Delphi para                        }
{ Emiss�o de Nota Fiscal de Servi�o                                            }
{                                                                              }
{ Direitos Autorais Reservados (c) 2015 Italo Jurisato Junior                  }
{                                       Daniel Simoes de Almeida               }
{                                                                              }
{ Colaboradores nesse arquivo:                                                 }
{                                                                              }
{  Voc� pode obter a �ltima vers�o desse arquivo na pagina do  Projeto ACBr    }
{ Componentes localizado em      http://www.sourceforge.net/projects/acbr      }
{                                                                              }
{  Esta biblioteca � software livre; voc� pode redistribu�-la e/ou modific�-la }
{ sob os termos da Licen�a P�blica Geral Menor do GNU conforme publicada pela  }
{ Free Software Foundation; tanto a vers�o 2.1 da Licen�a, ou (a seu crit�rio) }
{ qualquer vers�o posterior.                                                   }
{                                                                              }
{  Esta biblioteca � distribu�da na expectativa de que seja �til, por�m, SEM   }
{ NENHUMA GARANTIA; nem mesmo a garantia impl�cita de COMERCIABILIDADE OU      }
{ ADEQUA��O A UMA FINALIDADE ESPEC�FICA. Consulte a Licen�a P�blica Geral Menor}
{ do GNU para mais detalhes. (Arquivo LICEN�A.TXT ou LICENSE.TXT)              }
{                                                                              }
{  Voc� deve ter recebido uma c�pia da Licen�a P�blica Geral Menor do GNU junto}
{ com esta biblioteca; se n�o, escreva para a Free Software Foundation, Inc.,  }
{ no endere�o 59 Temple Street, Suite 330, Boston, MA 02111-1307 USA.          }
{ Voc� tamb�m pode obter uma copia da licen�a em:                              }
{ http://www.opensource.org/licenses/lgpl-license.php                          }
{                                                                              }
{ Daniel Sim�es de Almeida  -  daniel@djsystem.com.br  -  www.djsystem.com.br  }
{              Pra�a Anita Costa, 34 - Tatu� - SP - 18270-410                  }
{                                                                              }
{******************************************************************************}

{$I ACBr.inc}


unit ACBrNFSeDANFSeRLRetrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ACBrNFSeDANFSeRL, RLFilters, RLPDFFilter, RLReport, DB,
  pnfsConversao, ACBrNFSeDANFSEClass, ACBrNFSeDANFSeRLClass, ACBrDelphiZXingQRCode,
  DBClient;

type
  TfrlDANFSeRLRetrato = class(TfrlDANFSeRL)
    rlbCabecalho: TRLBand;
    rllNumNF0: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel12: TRLLabel;
    rliLogo: TRLImage;
    rllEmissao: TRLLabel;
    RLLabel8: TRLLabel;
    rllCodVerificacao: TRLLabel;
    RLLabel7: TRLLabel;
    rllCompetencia: TRLLabel;
    RLLabel18: TRLLabel;
    rllNumeroRps: TRLLabel;
    RLLabel20: TRLLabel;
    rllNumNFSeSubstituida: TRLLabel;
    rlmPrefeitura: TRLMemo;
    rlbPrestador: TRLBand;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    rllPrestMunicipio: TRLLabel;
    rllPrestInscMunicipal: TRLLabel;
    rllPrestEndereco: TRLLabel;
    rllPrestCNPJ: TRLLabel;
    rliPrestLogo: TRLImage;
    RLLabel2: TRLLabel;
    RLLabel1: TRLLabel;
    rllPrestNome: TRLLabel;
    RLLabel9: TRLLabel;
    rllPrestUF: TRLLabel;
    RLLabel22: TRLLabel;
    rllPrestComplemento: TRLLabel;
    RLLabel23: TRLLabel;
    rllPrestTelefone: TRLLabel;
    RLLabel24: TRLLabel;
    rllPrestEmail: TRLLabel;
    rlbTomador: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    rllTomaCNPJ: TRLLabel;
    RLLabel11: TRLLabel;
    rllTomaInscMunicipal: TRLLabel;
    RLLabel15: TRLLabel;
    rllTomaNome: TRLLabel;
    RLLabel17: TRLLabel;
    rllTomaEndereco: TRLLabel;
    RLLabel19: TRLLabel;
    rllTomaMunicipio: TRLLabel;
    RLLabel21: TRLLabel;
    rllTomaUF: TRLLabel;
    RLLabel10: TRLLabel;
    rllTomaEmail: TRLLabel;
    RLLabel25: TRLLabel;
    rllTomaComplemento: TRLLabel;
    RLLabel27: TRLLabel;
    rllTomaTelefone: TRLLabel;
    rlbHeaderItens: TRLBand;
    RLLabel14: TRLLabel;
    rlbItens: TRLBand;
    rlbISSQN: TRLBand;
    RLDraw52: TRLDraw;
    RLDraw53: TRLDraw;
    RLDraw54: TRLDraw;
    RLDraw55: TRLDraw;
    RLLabel137: TRLLabel;
    RLLabel138: TRLLabel;
    RLLabel139: TRLLabel;
    rllBaseCalc: TRLLabel;
    rllValorISS: TRLLabel;
    RLDraw4: TRLDraw;
    rllValorTotal: TRLLabel;
    RLLabel16: TRLLabel;
    rlmCodServico: TRLMemo;
    RLLabel3: TRLLabel;
    rllAliquota: TRLLabel;
    RLDraw6: TRLDraw;
    rlsLinhaH1: TRLDraw;
    rllCodigoObra: TRLLabel;
    rllCodObra: TRLLabel;
    rllTituloConstCivil: TRLLabel;
    rllCodigoArt: TRLLabel;
    rllCodART: TRLLabel;
    RLLabel34: TRLLabel;
    rllValorPIS: TRLLabel;
    RLLabel36: TRLLabel;
    rllValorCOFINS: TRLLabel;
    RLLabel38: TRLLabel;
    rllValorIR: TRLLabel;
    RLLabel40: TRLLabel;
    rllValorINSS: TRLLabel;
    RLLabel42: TRLLabel;
    rllValorCSLL: TRLLabel;
    RLLabel44: TRLLabel;
    RLDraw13: TRLDraw;
    RLDraw14: TRLDraw;
    RLLabel35: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLLabel47: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
    RLLabel53: TRLLabel;
    RLLabel54: TRLLabel;
    RLLabel55: TRLLabel;
    RLLabel56: TRLLabel;
    RLDraw15: TRLDraw;
    RLDraw16: TRLDraw;
    rllValorServicos1: TRLLabel;
    rllValorServicos2: TRLLabel;
    rllDescIncondicionado1: TRLLabel;
    rllDescIncondicionado2: TRLLabel;
    rllDescCondicionado: TRLLabel;
    rllRetencoesFederais: TRLLabel;
    rllOutrasRetencoes: TRLLabel;
    rllValorIssRetido: TRLLabel;
    rllValorLiquido: TRLLabel;
    RLDraw17: TRLDraw;
    rllIncentivador: TRLLabel;
    rllNatOperacao: TRLLabel;
    rllValorDeducoes: TRLLabel;
    rllRegimeEspecial: TRLLabel;
    rllOpcaoSimples: TRLLabel;
    rllISSReter: TRLLabel;
    rllMsgTeste: TRLLabel;
    rbOutrasInformacoes: TRLBand;
    rlmDadosAdicionais: TRLMemo;
    rllSistema: TRLLabel;
    RLLabel6: TRLLabel;
    rlbCanhoto: TRLBand;
    RLLabel26: TRLLabel;
    rllPrestNomeEnt: TRLLabel;
    RLLabel28: TRLLabel;
    RLDraw1: TRLDraw;
    rllNumNF0Ent: TRLLabel;
    RLLabel57: TRLLabel;
    RLLabel33: TRLLabel;
    RLDraw5: TRLDraw;
    RLLabel58: TRLLabel;
    RLLabel59: TRLLabel;
    RLDraw7: TRLDraw;
    RLLabel60: TRLLabel;
    RLLabel61: TRLLabel;
    rllTomaInscEstadual: TRLLabel;
    rllTomadorNomeEnt: TRLLabel;
    rlmDescricao: TRLMemo;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel62: TRLLabel;
    RLLabel63: TRLLabel;
    rllDataHoraImpressao: TRLLabel;
    lblMunicipioIncidencia: TRLLabel;
    procedure rlbCabecalhoBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rlbPrestadorBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rlbTomadorBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rlbItensBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rlbISSQNBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rbOutrasInformacoesBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLNFSeBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure rbOutrasInformacoesAfterPrint(Sender: TObject);
    procedure rlbHeaderItensBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
    PrimeiraPagina: Boolean;
    procedure MontarInformacoesAdicionais;
    procedure Itens;
    function ManterAliquota(dAliquota: Double): string;
  public
    { Public declarations }
    procedure QuebradeLinha(const sQuebradeLinha: string);
  end;

var
  frlDANFSeRLRetrato: TfrlDANFSeRLRetrato;

implementation

uses
  StrUtils, DateUtils, ACBrUtil, pnfsNFSe, ACBrDFeUtil, ACBrValidador,
  LibGir;

{$R *.dfm}

var
  FQuebradeLinha: string;

{ TfrlDANFSeRLRetrato }

procedure TfrlDANFSeRLRetrato.Itens;
begin
  cdsItens.Close;
  cdsItens.CreateDataSet;
  cdsItens.Open;

  cdsItens.Append;
  cdsItens.FieldByName('DISCRIMINACAO').AsString := FNFSe.Servico.Discriminacao;
  cdsItens.Post;

  cdsItens.First;
end;

procedure TfrlDANFSeRLRetrato.QuebradeLinha(const sQuebradeLinha: string);
begin
  FQuebradeLinha := sQuebradeLinha;
end;

procedure TfrlDANFSeRLRetrato.rbOutrasInformacoesBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  QrCode: TDelphiZXingQRCode;
  QrCodeBitmap: TBitmap;
  QRCodeData: string;
  rlImgQrCode: TRLImage;
  Row, Column: Integer;
begin
  inherited;

  if not PrimeiraPagina then exit;

  rlmDadosAdicionais.Lines.BeginUpdate;
  rlmDadosAdicionais.Lines.Clear;

  if FNFSe.OutrasInformacoes <> '' then
    rlmDadosAdicionais.Lines.Add(StringReplace(FNFSe.OutrasInformacoes, ';', #13#10, [rfReplaceAll, rfIgnoreCase]))
  else if FOutrasInformacaoesImp <> '' then
    rlmDadosAdicionais.Lines.Add(StringReplace(FOutrasInformacaoesImp, ';', #13#10, [rfReplaceAll, rfIgnoreCase]));

  if pos('http://', LowerCase(FNFSe.OutrasInformacoes)) > 0 then
  begin
    rlmDadosAdicionais.Width := 643;

    rlImgQrCode := TRLImage.Create(rbOutrasInformacoes);
    rlImgQrCode.Parent := rbOutrasInformacoes;
    rlImgQrCode.Stretch := True;
    rlImgQrCode.AutoSize := False;
    rlImgQrCode.Center := true;
    rlImgQrCode.SetBounds(648, 3, 90, 90);
    rlImgQrCode.BringToFront;

    QRCodeData := Trim(MidStr(FNFSe.OutrasInformacoes, pos('http://', LowerCase(FNFSe.OutrasInformacoes)), Length(FNFSe.OutrasInformacoes)));
    QRCode := TDelphiZXingQRCode.Create;
    QRCodeBitmap := TBitmap.Create;
    try
      QRCode.Data := QRCodeData;
      QRCode.Encoding := qrUTF8NoBOM;
      QRCode.QuietZone := 1;

      QRCodeBitmap.Width := QRCode.Columns;
      QRCodeBitmap.Height := QRCode.Rows;

      for Row := 0 to QRCode.Rows - 1 do
      begin
        for Column := 0 to QRCode.Columns - 1 do
        begin
          if (QRCode.IsBlack[Row, Column]) then
            QRCodeBitmap.Canvas.Pixels[Column, Row] := clBlack
          else
            QRCodeBitmap.Canvas.Pixels[Column, Row] := clWhite;
        end;
      end;

      rlImgQrCode.Picture.Bitmap.Assign(QRCodeBitmap);
    finally
      QRCode.Free;
      QRCodeBitmap.Free;
    end;
  end;

  MontarInformacoesAdicionais;
  rlmDadosAdicionais.Lines.EndUpdate;

  rllDataHoraImpressao.Caption := Format('DATA E HORA DA IMPRESS�O: %s', [FormatDateTime('dd/mm/yyyy hh:nn', Now)]);

  if FUsuario <> '' then
    rllDataHoraImpressao.Caption := Format('%s   USU�RIO: %s', [rllDataHoraImpressao.Caption, FUsuario]);

  // imprime sistema
  if FSistema <> '' then
  begin
    rllSistema.Caption := Format('Desenvolvido por %s', [FSistema]);
  end
  else
  begin
    rllSistema.Caption := '';
  end;
end;

procedure TfrlDANFSeRLRetrato.rlbCabecalhoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vStringStream: TStringStream;
begin
  inherited;

  if not PrimeiraPagina then exit;

  if (FLogo <> '') then
  begin
    if FilesExists(FLogo) then
      rliLogo.Picture.LoadFromFile(FLogo)
    else
    begin
      vStringStream := TStringStream.Create(FLogo);
      try
        try
          rliLogo.Picture.Bitmap.LoadFromStream(vStringStream);
        except
        end;
      finally
        vStringStream.Free;
      end;
    end;
  end;

  rlmPrefeitura.Lines.Clear;
  rlmPrefeitura.Lines.Add(StringReplace(FPrefeitura, ';', #13#10, [rfReplaceAll, rfIgnoreCase]));

  with FNFSe do
  begin
    if Length(Numero) > 6 then
      rllNumNF0.Caption := Numero
    else
      rllNumNF0.Caption := FormatDateTime('yyyy', DataEmissao) + '/' + Numero;

    rllEmissao.Caption := FormatDateTime('dd/mm/yyyy hh:nn', DataEmissao);
    rllCodVerificacao.Caption := CodigoVerificacao;

    if length(Competencia) = 6 then
      rllCompetencia.Caption := Copy(Competencia, 5, 2) + '/' + Copy(Competencia, 1, 4)
    else
      rllCompetencia.Caption := Copy(Competencia, 6, 2) + '/' + Copy(Competencia, 1, 4);

    rllNumeroRPS.Caption := IdentificacaoRps.Numero;
    rllNumNFSeSubstituida.Caption := NfseSubstituida;
  end;
end;

procedure TfrlDANFSeRLRetrato.rlbISSQNBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  MostrarObra: Boolean;
begin
  inherited;

  if not PrimeiraPagina then
  begin
    {rlmCodServico.Lines.Clear;
    rlbISSQN.Height := 1;
    rlbISSQN.Visible := False;
    rbOutrasInformacoes.Height := 1;
    rbOutrasInformacoes.Visible := False;
    exit;}
  end;

  RLLabel16.Visible := False;

  with FNFSe do
  begin

    rllNatOperacao.Caption := NaturezaOperacaoDescricao(NaturezaOperacao);
    rllRegimeEspecial.Caption := nfseRegimeEspecialTributacaoDescricao(RegimeEspecialTributacao);
    rllOpcaoSimples.Caption := SimNao(Integer(OptanteSimplesNacional));
    rllIncentivador.Caption := SimNao(Integer(IncentivadorCultural));
    rllCodObra.Caption := ConstrucaoCivil.CodigoObra;
    rllCodART.Caption := ConstrucaoCivil.Art;

    MostrarObra := (rllCodObra.Caption <> '') or (rllCodART.Caption <> '');
    rlsLinhaH1.Visible := MostrarObra;
    rllTituloConstCivil.Visible := MostrarObra;
    rllCodigoObra.Visible := MostrarObra;
    rllCodObra.Visible := MostrarObra;
    rllCodigoArt.Visible := MostrarObra;
    rllCodART.Visible := MostrarObra;

    if FNFSe.Tomador.Endereco.xMunicipio_Incidencia <> '' then
      begin
       lblMunicipioIncidencia.Caption := 'Cod/Munic�pio da incid�ncia do ISSQN: ' + FNFSe.Servico.CodigoMunicipio
         + ' / ' + FNFSe.Tomador.Endereco.xMunicipio_Incidencia;
      end
     else lblMunicipioIncidencia.Caption := '';

    with Servico.Valores do
    begin
      rllValorTotal.Caption := 'VALOR TOTAL DA NOTA = R$ ' + FormatFloat('#,##0.00', ValorServicos); 
      rlmCodServico.Lines.Clear;

      if Servico.xItemListaServico <> '' then
      begin
        RLLabel16.Visible := True;
        rlmCodServico.Lines.Append('Atividade: ' + FAtividade);
        rlmCodServico.Lines.Append(Servico.ItemListaServico + ' - ' + Servico.xItemListaServico);
      end
      else
      begin
        if FAtividade <> '' then
        begin
          RLLabel16.Visible := True;
          RLLabel16.Caption := 'Atividade:';
          rlmCodServico.Lines.Append(FAtividade);
        end
      end;
      rllValorPIS.Caption := FormatFloat('#,##0.00', ValorPis);
      rllValorCOFINS.Caption := FormatFloat('#,##0.00', ValorCofins);
      rllValorIR.Caption := FormatFloat('#,##0.00', ValorIr);
      rllValorINSS.Caption := FormatFloat('#,##0.00', ValorInss);
      rllValorCSLL.Caption := FormatFloat('#,##0.00', ValorCsll);
      rllValorServicos1.Caption := FormatFloat('#,##0.00', ValorServicos);
      rllDescIncondicionado1.Caption := FormatFloat('#,##0.00', DescontoIncondicionado);
      rllDescCondicionado.Caption := FormatFloat('#,##0.00', DescontoCondicionado);
      rllRetencoesFederais.Caption := FormatFloat('#,##0.00', ValorPis +
        ValorCofins +
        ValorInss +
        ValorIr +
        ValorCsll);
      rllOutrasRetencoes.Caption := FormatFloat('#,##0.00', OutrasRetencoes);
      rllValorIssRetido.Caption := FormatFloat('#,##0.00', ValorIssRetido);
      rllValorLiquido.Caption := FormatFloat('#,##0.00', ValorLiquidoNfse);
      rllValorServicos2.Caption := FormatFloat('#,##0.00', ValorServicos);
      rllValorDeducoes.Caption := FormatFloat('#,##0.00', ValorDeducoes);
      rllDescIncondicionado2.Caption := FormatFloat('#,##0.00', DescontoIncondicionado);
      rllBaseCalc.Caption := FormatFloat('#,##0.00', BaseCalculo);
      rllAliquota.Caption := ManterAliquota(Aliquota);
      rllISSReter.Caption := SituacaoTributariaDescricao(IssRetido);
      rllValorISS.Caption := FormatFloat('#,##0.00', ValorIss);

    end;
  end;

end;

procedure TfrlDANFSeRLRetrato.rlbItensBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  i, TamanhoProduto, TamanhoValores: Integer;
  x: string;
begin
  inherited;

  {rlmDescricao.Lines.Clear;
  rlmDescricao.Lines.Add( StringReplace( FNFSe.Servico.Discriminacao,
                          FQuebradeLinha, #13#10, [rfReplaceAll, rfIgnoreCase] ) );}

  rlmDescricao.Lines.Clear;
  if PrimeiraPagina then
  begin
    rlmDescricao.lines.Text := FNFSe.Servico.Discriminacao;
  end
  else begin
   {if FNFSe.ListaDadosProdutos = nil then exit;

   rlmDescricao.AutoSize := True;
   TamanhoProduto := 65;
   TamanhoValores := 12;

   x:= MontaString('PRODUTO',TamanhoProduto,1)
       + ' ' +MontaString('QUANTIDADE',TamanhoValores)
       + ' ' +MontaString('VALOR',TamanhoValores)
       + ' ' +MontaString('TOTAL',TamanhoValores);
   rlmDescricao.lines.Add(x);
   rlmDescricao.Font.Size := 8;
   rlmDescricao.Font.Name := 'Courier New';

   for i:= low(FNFSe.ListaDadosProdutos) to high(FNFSe.ListaDadosProdutos) do
   begin
     x:= MontaString(FNFSe.ListaDadosProdutos[i].Produto,TamanhoProduto,1)
         + ' ' +MontaString(FormatFloat('0.,00',FNFSe.ListaDadosProdutos[i].Quantidade),TamanhoValores)
         + ' ' +MontaString(FormatFloat('0.,00',FNFSe.ListaDadosProdutos[i].Valor),TamanhoValores)
         + ' ' +MontaString(FormatFloat('0.,00',FNFSe.ListaDadosProdutos[i].Total),TamanhoValores);
     rlmDescricao.lines.Add(x);
   end;

   x:= 'Contrato: ' + FNFSe.ListaDadosProdutos[0].Contrato
       + ' Dt.Faturamento: ' + FNFSe.ListaDadosProdutos[0].DataFaturamento;

   if FNFSe.ListaDadosProdutos[0].Rols <> '' then
     x:= x + ' Rols:(' + FNFSe.ListaDadosProdutos[0].Rols + ')';

   if FNFSe.ListaDadosParcelas <> nil then
   begin
     rlmDescricao.lines.Add('');
     rlmDescricao.lines.Add('<<<<<<<<<<<< PARCELAS >>>>>>>>>>>>>');

     x:= 'Numero ' +MontaString('Valor',TamanhoValores)+ ' ' +MontaString('Vencimento',15);
     rlmDescricao.lines.Add(x);

     for i:= low(FNFSe.ListaDadosParcelas) to high(FNFSe.ListaDadosParcelas) do
     begin
       x:= FormatFloat('000',FNFSe.ListaDadosParcelas[i].Numero)
         + '    ' +MontaString(FormatFloat('0.,00',FNFSe.ListaDadosParcelas[i].Valor),TamanhoValores)
         + ' ' +MontaString(FormatDateTime('dd/mm/yyyy',FNFSe.ListaDadosParcelas[i].Vendimento),15);
       rlmDescricao.lines.Add(x);
     end;
   end;  }
  end;

end;

procedure TfrlDANFSeRLRetrato.rlbPrestadorBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vStringStream: TStringStream;
begin
  inherited;

  if not PrimeiraPagina then exit;

  if (FPrestLogo <> '') then
  begin
    if FilesExists(FPrestLogo) then
      rliPrestLogo.Picture.LoadFromFile(FPrestLogo)
    else
    begin
      vStringStream := TStringStream.Create(FPrestLogo);
      try
        try
          rliPrestLogo.Picture.Bitmap.LoadFromStream(vStringStream);
        except
        end;
      finally
        vStringStream.Free;
      end;
    end;
  end;

  with FNFSe do
  begin
    with PrestadorServico do
    begin
      with IdentificacaoPrestador do
      begin
        rllPrestCNPJ.Caption := FormatarCNPJ(Cnpj);
        rllPrestInscMunicipal.Caption := IfThen(InscricaoMunicipal <> '', InscricaoMunicipal, FInscMunicipal);
        rllPrestNome.Caption := IfThen(RazaoSocial <> '', RazaoSocial, FRazaoSocial);
        with Tomador.IdentificacaoTomador do
          rllTomaInscEstadual.Caption := IfThen(InscricaoEstadual <> '', InscricaoEstadual, FT_InscEstadual);
      end;

      with Endereco do
      begin
        rllPrestEndereco.Caption := IfThen(Endereco <> '', Trim(Endereco) + ', ' +
          Trim(Numero) + ' - ' +
          Trim(Bairro) +
          ' - CEP: ' +
          FormatarCEP(Poem_Zeros(CEP, 8)),
          Trim(FEndereco));
        rllPrestComplemento.Caption := IfThen(Complemento <> '', Complemento, FComplemento);
        rllPrestMunicipio.Caption := IfThen(xMunicipio <> '', CodigoMunicipio + ' - ' + xMunicipio, FMunicipio);
        rllPrestUF.Caption := IfThen(UF <> '', UF, FUF);
      end;
      with Contato do
      begin
        rllPrestTelefone.Caption := IfThen(Telefone <> '', FormatarFone(Telefone), FormatarFone(FFone));
        rllPrestEmail.Caption := IfThen(Email <> '', Email, FEMail_Prestador);
      end;

      rllPrestNomeEnt.Caption := FRazaoSocial;
      rllNumNF0Ent.Caption := FormatFloat('00000000000', StrToFloatDef(Numero, 0));
      rllTomadorNomeEnt.Caption := 'Emiss�o:' + FormatDateTime('dd/mm/yy', DataEmissao) +
        '-Tomador:' + Tomador.RazaoSocial +
        '-Total:' + FormatFloat('##,##0.00', Servico.Valores.ValorLiquidoNfse);
    end;
  end;
end;

procedure TfrlDANFSeRLRetrato.rlbTomadorBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;

  if not PrimeiraPagina then exit;

  with FNFSe do
  begin
    with Tomador do
    begin
      rllTomaNome.Caption := RazaoSocial;
      with IdentificacaoTomador do
      begin
        if Length(CpfCnpj) <= 11
          then
          rllTomaCNPJ.Caption := FormatarCPF(CpfCnpj)
        else
          rllTomaCNPJ.Caption := FormatarCNPJ(CpfCnpj);

        rllTomaInscMunicipal.Caption := IfThen(InscricaoMunicipal <> '', InscricaoMunicipal, FT_InscMunicipal);

      end;
      with Endereco do
      begin
        if Endereco <> '' then
        begin

          rllTomaEndereco.Caption := Trim(Endereco) + ', ' +
            Trim(Numero) + ' - ' +
            Trim(Bairro) + ' - CEP: ' +
            FormatarCEP(Poem_Zeros(CEP, 8));
        end
        else
          rllTomaEndereco.Caption := Trim(FT_Endereco) + ' - CEP: ' +
            FormatarCEP(Poem_Zeros(CEP, 8));

        rllTomaComplemento.Caption := IfThen(Complemento <> '', Complemento, FT_Complemento);

        rllTomaMunicipio.Caption := CodigoMunicipio + ' - ' + xMunicipio;
        rllTomaUF.Caption := UF;
      end;

      with Contato do
      begin
        rllTomaTelefone.Caption := IfThen(Telefone <> '', FormatarFone(Telefone), FormatarFone(FT_Fone));
        rllTomaEmail.Caption := IfThen(Email <> '', Email, FT_Email);
      end;

      rllMsgTeste.Visible := False;
      rllMsgTeste.Enabled := False;
    end;

    if NfseCancelamento.DataHora <> 0 then
    begin
      rllMsgTeste.Caption := 'NFS-e CANCELADA';
      rllMsgTeste.Visible := True;
      rllMsgTeste.Enabled := True;
      rllMsgTeste.Font.Size := 40;
      rllMsgTeste.Font.Color := clRed;
    end;
    rllMsgTeste.Repaint;
  end;

end;

procedure TfrlDANFSeRLRetrato.RLNFSeBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;

  if not PrimeiraPagina then exit;

  Itens;

  //RLNFSe.DataSource := dsItens;
  RLNFSe.Title := 'NFS-e: ' + FNFSe.Numero + ' - ' + FNFSe.Tomador.Endereco.xMunicipio_Incidencia;
  RLNFSe.Margins.TopMargin := FMargemSuperior * 10;
  RLNFSe.Margins.BottomMargin := FMargemInferior * 10;
  RLNFSe.Margins.LeftMargin := FMargemEsquerda * 10;
  RLNFSe.Margins.RightMargin := FMargemDireita * 10;

end;


function TfrlDANFSeRLRetrato.ManterAliquota(dAliquota: Double): string;
begin
  // thema precisa ser desta forma pois usa aliquota 2,5 => 0,025
  if (dAliquota > 0) and (dAliquota < 1) then
    Result := FormatFloat('#,##0.00', dAliquota * 100)
  else
    Result := FormatFloat('#,##0.00', dAliquota);
end;


procedure TfrlDANFSeRLRetrato.FormCreate(Sender: TObject);
begin
  inherited;
  PrimeiraPagina := True;
end;

procedure TfrlDANFSeRLRetrato.rbOutrasInformacoesAfterPrint(
  Sender: TObject);
begin
  inherited;
  if (PrimeiraPagina) and (FNFSe.ListaDadosProdutos <> nil) then
  begin
    PrimeiraPagina := False;
    //RLNFSe.NewPage;
  end;
end;

procedure TfrlDANFSeRLRetrato.rlbHeaderItensBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  if not PrimeiraPagina then
    RLLabel14.Caption := 'DESCRI��O DE MATERIAIS'
end;

procedure TfrlDANFSeRLRetrato.MontarInformacoesAdicionais;
var
  i, TamanhoProduto, TamanhoValores: Integer;
  x: string;
begin
  if (FNFSe.ListaDadosProdutos = nil) and (FNFSe.ListaDadosParcelas = nil) then exit;

  rlmDadosAdicionais.AutoSize := True;
  TamanhoProduto := 65;
  TamanhoValores := 12;
  rlmDadosAdicionais.Font.Size := 8;
  rlmDadosAdicionais.Font.Name := 'Courier New';

  if FNFSe.ListaDadosProdutos <> nil then
  begin
    x := MontaString('PRODUTO', TamanhoProduto, 1)
    + ' ' + MontaString('QUANTIDADE', TamanhoValores)
    + ' ' + MontaString('VALOR', TamanhoValores)
    + ' ' + MontaString('TOTAL', TamanhoValores);
    rlmDadosAdicionais.lines.Add(x);

    for i := low(FNFSe.ListaDadosProdutos) to high(FNFSe.ListaDadosProdutos) do
    begin
      x := MontaString(FNFSe.ListaDadosProdutos[i].Produto, TamanhoProduto, 1)
        + ' ' + MontaString(FormatFloat('0.,00', FNFSe.ListaDadosProdutos[i].Quantidade), TamanhoValores)
        + ' ' + MontaString(FormatFloat('0.,00', FNFSe.ListaDadosProdutos[i].Valor), TamanhoValores)
        + ' ' + MontaString(FormatFloat('0.,00', FNFSe.ListaDadosProdutos[i].Total), TamanhoValores);
      rlmDadosAdicionais.lines.Add(x);
    end;

    x := 'Contrato: ' + FNFSe.ListaDadosProdutos[0].Contrato
      + ' Dt.Faturamento: ' + FNFSe.ListaDadosProdutos[0].DataFaturamento;

    if FNFSe.ListaDadosProdutos[0].Rols <> '' then
      x := x + ' Rols:(' + FNFSe.ListaDadosProdutos[0].Rols + ')';
  end;

  if FNFSe.ListaDadosParcelas <> nil then
  begin
    rlmDadosAdicionais.lines.Add('');
    rlmDadosAdicionais.lines.Add('<<<<<<<<<<<< PARCELAS >>>>>>>>>>>>>');

    x := 'Numero ' + MontaString('Valor', TamanhoValores) + ' ' + MontaString('Vencimento', 15);
    rlmDadosAdicionais.lines.Add(x);

    for i := low(FNFSe.ListaDadosParcelas) to high(FNFSe.ListaDadosParcelas) do
    begin
      x := FormatFloat('000', FNFSe.ListaDadosParcelas[i].Numero)
        + '    ' + MontaString(FormatFloat('0.,00', FNFSe.ListaDadosParcelas[i].Valor), TamanhoValores)
        + ' ' + MontaString(FormatDateTime('dd/mm/yyyy', FNFSe.ListaDadosParcelas[i].Vendimento), 15);
      rlmDadosAdicionais.lines.Add(x);
    end;
  end;
end;



end.
{$HINTS ON}
{$WARNINGS ON}


