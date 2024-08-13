echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/NOBODYBOTz/Res NOBODYBOTz/Res 
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/NOBODYBOTz/Res -b $BRANCH /NOBODYBOTz/Res
fi
cd Jisshubot/Jisshu-forward-bot 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
gunicorn app:app & python3 main.py
