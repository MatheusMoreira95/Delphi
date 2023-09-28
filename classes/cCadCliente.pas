unit cCadCliente;

interface

uses System.Classes,
      Vcl.Controls,Vcl.ExtCtrls,vcl.Dialogs,
       ZAbstractConnection, ZConnection,
       ZAbstractRODataset, ZAbstractDataset, ZDataset,System.SysUtils;

  type
    TCliente = class
      private
          ConexaoDB: TZConnection;
          F_clienteId : Integer;
          F_nome :String;
          F_endereco :String;
          F_cidade:String;
          F_bairro: String;
          F_estado: String;
          F_cep : String;
          F_telefone: String;
          F_email : String;
          F_dataNascimento : TDateTime;

      public
          constructor   Create(aConexao:TZConnection);
          destructor Destroy; override;
          function Inserir:Boolean;
          function Atualizar:Boolean;
          function Apagar:Boolean;
          function Selecionar(id:Integer):Boolean;

      published
          property codigo :Integer read F_clienteId write F_clienteId;
          property nome :String read F_nome write F_nome;
          property endereco :String read F_endereco write F_endereco;
          property cidade :String read F_cidade write F_cidade;
          property bairro :String read F_bairro write F_bairro;
          property estado :String read F_estado write F_estado;
          property cep :String read F_cep write F_cep;
          property telefone :String  read F_telefone write F_telefone;
          property email :String read F_email write F_email;
          property nascimento :TDateTime read F_dataNascimento write F_dataNascimento;

    end;

implementation

constructor TCliente.Create(aConexao:TZConnection);
  begin
    ConexaoDB :=aConexao;
  end;


destructor TCliente.Destroy;
  begin
    inherited;
  end;



function TCliente.Apagar: Boolean;
var Qry : TzQuery;
begin
    if MessageDlg('Apagar o Registro: ' + #13 +#13 +
                  'C�digo: ' + IntToStr(F_clienteId) + #13 +
                  'Nome: '  + F_nome ,mtConfirmation,[mbYes ,mbNo],0)= mrNo then begin
                    Result :=false;
                    Abort;
                  end;

    try
       Result := true;
       Qry :=TZQuery.Create(nil);
       Qry.Connection := ConexaoDB;
       Qry.SQL.Clear;
       Qry.SQL.Add('Delete from clientes where clienteId = :clienteId ');
       Qry.ParamByName('clienteId').AsInteger := F_clienteId;

         try
            ConexaoDB.StartTransaction;
            Qry.ExecSQL;
            ConexaoDB.Commit
         Except
             ConexaoDB.Commit;
             Result := False;
         end;
    finally
        if Assigned(qry) then
          FreeAndNil(Qry);

    end;

end;

function TCliente.Atualizar: Boolean;
  var qry : TZQuery;
begin
       try
           Result := true;
           Qry :=TZQuery.Create(nil);
           Qry.Connection := ConexaoDB;
           Qry.SQL.Clear;
           Qry.SQL.Add('Update clientes set ' +
                        ' nome = :nome ' +
                        ' ,endereco = :endereco ' +
                        ' ,cidade = :cidade ' +
                        ' ,bairro = :bairro ' +
                        ' ,estado = :estado ' +
                        ' ,cep = :cep ' +
                        ' ,telefone = :telefone ' +
                        ' ,email = :email  ' +
                        ' ,dataNascimento = :Nascimento '  +
                         '  where clienteId = :clienteId  '    );

          Qry.ParamByName('ClienteId').AsInteger  := Self.F_clienteId;
          Qry.ParamByName('nome').AsString := Self.F_nome;
          Qry.ParamByName('endereco').AsString := Self.F_endereco;
          Qry.ParamByName('cidade').AsString := Self.F_cidade;
          Qry.ParamByName('bairro').AsString := Self.F_bairro;
          Qry.ParamByName('estado').AsString := Self.F_estado;
          Qry.ParamByName('cep').AsString := Self.F_cep;
          Qry.ParamByName('telefone').AsString := Self.F_telefone;
          Qry.ParamByName('email').AsString := Self.F_email;
          qry.ParamByName('Nascimento').AsDateTime := Self.F_dataNascimento;

         try
            ConexaoDB.StartTransaction;
            Qry.ExecSQL;
            ConexaoDB.Commit
         Except
             ConexaoDB.Commit;
             Result := False;
         end;
       finally
           if Assigned(qry) then
          FreeAndNil(Qry);

       end;

end;




function TCliente.Inserir: Boolean;
var qry :TZQuery;
begin
       try
           Result := true;
           Qry :=TZQuery.Create(nil);
           Qry.Connection := ConexaoDB;
           Qry.SQL.Clear;
           Qry.SQL.Add('insert into clientes ( nome , endereco , cidade , bairro, estado ,' +
                         ' cep , telefone , email , datanascimento ) values ( '   +
                        '   :nome ' +
                        ' , :endereco ' +
                        ' , :cidade ' +
                        ' , :bairro ' +
                        ' , :estado ' +
                        ' , :cep ' +
                        ' , :telefone ' +
                        ' , :email  ' +
                        ' , :Nascimento ) '  );

          Qry.ParamByName('nome').AsString := Self.F_nome;
          Qry.ParamByName('endereco').AsString := Self.F_endereco;
          Qry.ParamByName('cidade').AsString := Self.F_cidade;
          Qry.ParamByName('bairro').AsString := Self.F_bairro;
          Qry.ParamByName('estado').AsString := Self.F_estado;
          Qry.ParamByName('cep').AsString := Self.F_cep;
          Qry.ParamByName('telefone').AsString := Self.F_telefone;
          Qry.ParamByName('email').AsString := Self.F_email;
          qry.ParamByName('Nascimento').AsDateTime := Self.F_dataNascimento;

         try
            ConexaoDB.StartTransaction;
            Qry.ExecSQL;
            ConexaoDB.Commit
         Except
             ConexaoDB.Commit;
             Result := False;
         end;

       finally
           if Assigned(qry) then
          FreeAndNil(Qry);

       end;
end;

function TCliente.Selecionar(id: Integer): Boolean;
var qry : TZQuery;
begin
       try
           Result := true;
           Qry :=TZQuery.Create(nil);
           Qry.Connection := ConexaoDB;
           Qry.SQL.Clear;
           Qry.SQL.Add('select  clienteID, nome , endereco , cidade , bairro, estado ,' +
                         ' cep , telefone , email , datanascimento from clientes ' +
                         ' where clienteId = :clienteId ');

          Qry.ParamByName('ClienteId').AsInteger  := id;

          try
              Qry.Open;

              Self.F_clienteId :=    Qry.FieldByName('clienteId').AsInteger;
              Self.F_nome :=    Qry.FieldByName('nome').AsString ;
              Self.F_endereco  := Qry.FieldByName('endereco').AsString;
              Self.F_cidade :=  Qry.FieldByName('cidade').AsString ;
              Self.F_bairro  := Qry.FieldByName('bairro').AsString ;
              Self.F_estado  := Qry.FieldByName('estado').AsString;
              Self.F_cep  := Qry.FieldByName('cep').AsString;
              Self.F_telefone  := Qry.FieldByName('telefone').AsString;
              Self.F_email  := Qry.FieldByName('email').AsString;
              Self.F_dataNascimento   := Qry.FieldByName('DataNascimento').AsDateTime;

          Except
              Result:= false;
          end;

       finally
           if Assigned(qry) then
          FreeAndNil(Qry);

       end;


end;

end.
