color="\e[36m"
no_color="\e[0m"

app_prerequisites() {
  echo -e "$color Add Application User $no_color"
  useradd roboshop
  echo -e "$color Create Application Directory $no_color"
  rm -rf /app
  mkdir /app
  echo -e "$color Download Application content $no_color"
  curl -L -o /tmp/$app_name.zip https://roboshop-artifacts.s3.amazonaws.com/$app_name-v3.zip
  cd /app
  echo -e "$color Extract Application Content $no_color"
  unzip /tmp/$app_name.zip
}