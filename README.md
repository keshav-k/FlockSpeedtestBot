# FlockSpeedtestBot
Track your internet speed on Flock

Step 1: Create an incoming webhook selecting the group where you wish to receive speedtest updates
https://dev.flock.co/docs/create-incoming-webhook

Step 2: Download the speedtest_cli script and add execute permission
>curl https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest_cli.py > PATH_TO_CLI/speedtest_cli.py
>chmod +x PATH_TO_CLI/speedtest_cli.py

Step 3: Download the master script and add execute permission
>curl https://raw.githubusercontent.com/keshav2910/FlockSpeedtestBot/master/speedtest.sh > PATH/speedtest.sh
>chmod +x PATH/speedtest.sh

Step 4: Test the script by running manually
>PATH/speedtest.sh PATH_TO_CLI/speedtest_cli.py <incoming_webhook_url>

This should post speedtest result in the Flock group that you specified in incoming webhook.

Step 5: Add cron to run this in regular intervals
crontab -e

Eg: For every 5 minutes
0,5 * * * * PATH/speedtest.sh PATH_TO_CLI/speedtest_cli.py <incoming_webhook_url>

For every 30 minutes
0,30 * * * * PATH/speedtest.sh PATH_TO_CLI/speedtest_cli.py <incoming_webhook_url>

ALL SET. You should start recieving internet speed updates in the Flock group.
Cheers!


