#Recebe os dois arquivos contento a hash que seram comparados
$var = (Get-FileHash -Algorithm MD5 '').hash
$var2 = (Get-FileHash -Algorithm MD5 '').hash

if($var -ne($var2)){
#Mensagem que aparecerá na tela se os arquivos forem diferentes e depois enviará o email
echo 'São diferentes'

#E-mail do rementente
$EmailFrom = “”

#E-mail do destinatário
$EmailTo = “”

#Assunto
$Subject = “”

#Corpo do e-mail que está pedindo a comparação de dois arquivos
$Body = “'Compare-Object $var $var2'”

#Endereço do e-mail
$SMTPServer = “smtp.live.com” #substitua esse endereço pelo endereço do servido SMTP que for utilizar

#Portal do servidor SMTP
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587)

$SMTPClient.EnableSsl = $true

#Recebe um objeto contendo e-mail do remetente e a senha do email
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential(“#email”, “#senha”);

#Realizando o envio da mensagem
$SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)


}else{
#Mensagem que aparecerá na tela se os arquivos forem iguais
echo 'são iguais'
}