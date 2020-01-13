# Robot Framework Test Assistant Package

### Use leon-ai to turn [Robot Framework](https://robotframework.org/) into a conversational AI test assistant and [OpenRPA](https://github.com/robocloud/openrpa-template) task runner.

This is a "leon-ai package" (similar to Amazon's Alexa Skills) that focuses on RPA and assisting testers. It can also help make a test team's automation more accessible to non-testers, other technical people, and non-technical people who work on the same product/software development team. Feel free to fork this and use it as a template to build your own test/RPA assistant.

With this package you will be able to control test processes and RPA tasks with your voice or with a text message sent directly to the assistant through leon-ai's UI. The following tool requirements need to be set up first in order to run the tests and RPA tasks suite examples in this assistant's "robotframework-brain". Please set up or install all of the tool requirements and all of the required .env files mentioned below.

- https://github.com/jg8481/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/blob/master/README.md
- https://github.com/coursehero/slacktee

Here are video demonstrations. More will be added soon.
- [Voice command triggering a single quick check.](https://drive.google.com/file/d/1lmKCbsB9rU56OGFr4cf2EkP_ydEywt83/view?usp=sharing)
- [Text command triggering parallel running checks.](https://drive.google.com/file/d/11Br2ds2I__M6o56KGAeRhW7z-GdtjI0z/view?usp=sharing)

### Commands for running leon-ai and getting started with this package.

```
## Node.js v12.14.0 is the most reliable version to use with this package.
## Newer Node.js versions will cause DeepSpeech errors.
## First, clone the following forked leon-ai repository...

git clone https://github.com/jg8481/leon.git

## Then enter the following commands...

cd leon
npm install && npm run build && npm run setup:offline && npm audit fix && npm run check && npm start 	

## If you get this --> ".env file already exists, overwrite:...", select No or press enter.
```

```
## Open another terminal, and run the following to use voice commands.
npm run wake
```

#### Usage

From any browser enter this URL to access leon-ai's UI --> http://localhost:1337/

Then use any of the following groups of commands. Please read all of the descriptions first.

```
>> Stand-alone Commands <<

"help" <-- This on-demand (no time delay) command will immediately display a GitHub link to this documentation.
"clean" <-- This on-demand (no time delay) command will immediately clean up all results and logs.
"check one" <-- This on-demand (no time delay) command will immediately run a single automated check called Check One, and quickly display the results file.
"check two" <-- This on-demand (no time delay) command will immediately run a single automated check called Check Two, and quickly display the results file.
"check three" <-- This on-demand (no time delay) command will immediately run a single automated check called Check Three, and quickly display the results file.
"check four" <-- This on-demand (no time delay) command will immediately run a single automated check called Check Four, and quickly display the results file.
"group one" <-- This on-demand (no time delay) command will immediately run parallel automated checks called Group One, and quickly display the results file.
"group two" <-- This on-demand (no time delay) command will immediately run parallel automated checks called Group Two, and quickly display the results file.
"group three" <-- This on-demand (no time delay) command will immediately run parallel automated checks called Group Three, and quickly display the results file.
"group four" <-- This on-demand (no time delay) command will immediately run parallel automated checks called Group Four, and quickly display the results file.
"slack notify" <-- This on-demand (no time delay) command will immediately send out all console logs as a Slack notification to a specific channel.
"desktop browsers" <-- This on-demand (no time delay) command will immediately run parallel automated checks on multiple browsers using PaBot, and quickly display the results file.
"results dashboard" <-- This on-demand (no time delay) command will immediately combine all automation results into one .html log file and deploy it to Heroku.
"time delayed runner one" <-- This time delayed command will wait for a specific amount of time defined in the robotframework-test-assistant.py leon-ai module. After waiting it will run a single command or many commands chained together in a specific order.
"time delayed runner two" <-- This time delayed command will wait for a specific amount of time defined in the robotframework-test-assistant.py leon-ai module. After waiting it will run a single command or many commands chained together in a specific order.
"time delayed runner three" <-- This time delayed command will wait for a specific amount of time defined in the robotframework-test-assistant.py leon-ai module. After waiting it will run a single command or many commands chained together in a specific order.
"bug risk" <-- This time delayed command will wait for a short duration, run a set of Robot Framework RPA commands that uses a Docker Container that checks the git commit bug risk of a specific repo using a tool called gitrisky, and sends notifications to specific Slack channels using slacktee if there are commits with a bug risk score of 0.1 or higher.
"generic on demand runner" <-- This on-demand (no time delay) command will immediately run many commands chained together in a specific order.




>> Groups Of Related Commands <<

[Custom Runner One] :: This group of commands will run a series of checks in an order defined by you. You can use your voice or type text into the leon-ai UI using the commands listed below...
"set up runner one" <-- This command NEEDS TO RUN BEFORE OTHERS in this group. This will set up a custom serial automation runner that allows the user to define which checks will run using a CustomSerialAutomationRunnerFile.csv file.
"set check one" <-- This command can RUN AFTER the "set up runner one" command is finished running. It will set the custom serial automation runner to run this specifically tagged check in the Leon-Robot-Framework-Customizable-Serial-Runner.robot file. This check works the same way as the similar command found in the >> Stand-alone Commands <<.
"set check two" <-- This command can RUN AFTER the "set up runner one" command is finished running. It will set the custom serial automation runner to run this specifically tagged check in the Leon-Robot-Framework-Customizable-Serial-Runner.robot file. This check works the same way as the similar command found in the >> Stand-alone Commands <<.
"set check three" <-- This command can RUN AFTER the "set up runner one" command is finished running. It will set the custom serial automation runner to run this specifically tagged check in the Leon-Robot-Framework-Customizable-Serial-Runner.robot file. This check works the same way as the similar command found in the >> Stand-alone Commands <<.
"set check four" <-- This command can RUN AFTER the "set up runner one" command is finished running. It will set the custom serial automation runner to run this specifically tagged check in the Leon-Robot-Framework-Customizable-Serial-Runner.robot file. This check works the same way as the similar command found in the >> Stand-alone Commands <<.
"custom runner one" <-- This on-demand (no time delay) command NEEDS TO RUN AFTER the "set up runner one" and the "set xxxx xxxx etc." command(s) finished running. It will immediately run the series of checks from this group of related commands in an order defined by you.
"display runner one" <-- This command NEEDS TO RUN AFTER the "custom runner one" command is finished running. It will display the combined results of the "custom runner one" command.


[Custom Runner Two] :: This group of commands will run groups of parallel checks in an order defined by you. You can use your voice or type text into the leon-ai UI using the commands listed below...
"set up runner two" <-- This command NEEDS TO RUN BEFORE OTHERS in this group. This will set up a custom parallel automation runner that allows the user to define which checks will run using a CustomParallelAutomationRunnerFile.csv file.
"set group one" <-- This command can RUN AFTER the "set up runner two" command is finished running. It will set the custom parallel automation runner to run this specifically tagged check in the Leon-Robot-Framework-Customizable-Parallel-Runner1.robot and Leon-Robot-Framework-Customizable-Parallel-Runner2.robot files. This check works the same way as the similar command found in the >> Stand-alone Commands <<.
"set group two" <-- This command can RUN AFTER the "set up runner two" command is finished running. It will set the custom parallel automation runner to run this specifically tagged check in the Leon-Robot-Framework-Customizable-Parallel-Runner1.robot and Leon-Robot-Framework-Customizable-Parallel-Runner2.robot files. This check works the same way as the similar command found in the >> Stand-alone Commands <<.
"set group three" <-- This command can RUN AFTER the "set up runner two" command is finished running. It will set the custom parallel automation runner to run this specifically tagged check in the Leon-Robot-Framework-Customizable-Parallel-Runner1.robot and Leon-Robot-Framework-Customizable-Parallel-Runner2.robot files. This check works the same way as the similar command found in the >> Stand-alone Commands <<.
"set group four" <-- This command can RUN AFTER the "set up runner two" command is finished running. It will set the custom parallel automation runner to run this specifically tagged check in the Leon-Robot-Framework-Customizable-Parallel-Runner1.robot and Leon-Robot-Framework-Customizable-Parallel-Runner2.robot files. This check works the same way as the similar command found in the >> Stand-alone Commands <<.
"custom runner two" <-- This on-demand (no time delay) command NEEDS TO RUN AFTER the "set up runner two" and the "set xxxx xxxx etc." command(s) finished running. It will immediately run the series of checks from this group of related commands in an order defined by you.
"display runner two" <-- This command NEEDS TO RUN AFTER the "custom runner one" command is finished running. It will display the combined results of the "custom runner two" command.


[Docker Container Examples] :: This group of commands will allow you to run various Docker Containers from an existing project called Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019 with your voice or by typing in text into leon-ai's UI...
"docker clean" <-- This command NEEDS TO RUN BEFORE OTHERS in this group. This will stop and clean up all Docker Containers running on your local machine.
"docker build" <-- This command NEEDS TO RUN BEFORE OTHERS in this group, and NEEDS TO RUN AFTER the "docker clean" command is finished running. This will set up all of the necessary Docker Containers for this group of commands.
"response check" <-- This command can RUN AFTER the "docker build" command is finished running. It will run API response checks using Robot Framework in a Docker Container.
"random order response checks" <-- This command can RUN AFTER the "docker build" command is finished running. It will run API response checks in a random order using Robot Framework in a Docker Container.
"run graphwalker checks" <-- This command can RUN AFTER the "docker build" command is finished running. It will run API response checks using a Model-based Testing tool called GraphWalker combined with Robot Framework in a Docker Container.
"display graph walker path" <-- This command can RUN AFTER the "docker build" command is finished running. It will display the combined results of the "run graphwalker checks" command.
"run graph walker again" <-- This command can RUN AFTER the "docker build" command is finished running. It will re-run the GraphWalker path that was generated when the "run graphwalker checks" command last used.
"remote docker one" <-- This command can RUN AFTER the "docker build" command is finished running. This will setup a Docker Container running Robot Framework that can be used locally or remotely (for example on AWS ECS, EC2, or another computer on the same network), and it can be triggered by a webhook.
"remote docker two" <-- This command can RUN AFTER the "docker build" command is finished running. This will setup a Docker Container running Robot Framework that can be used locally or remotely (for example on AWS ECS, EC2, or another computer on the same network), and it can be triggered by a webhook.
"trigger remote one" <-- This command can RUN AFTER the "remote docker one" command is finished running. This command will trigger the webhook for the Docker Container that was setup after running the "remote docker one" command.
"trigger remote two" <-- This command can RUN AFTER the "remote docker one" command is finished running. This command will trigger the webhook for the Docker Container that was setup after running the "remote docker two" command.
"trigger parallel docker" <-- This command can RUN AFTER BOTH the "remote docker one" and "remote docker two" commands are finished running. This command will trigger the both webhooks for the Docker Containers that were setup after running the "remote docker one" and "remote docker two" commands. This will result in both remote containers to run in parallel.


[RPA Custom Tasks And Suites Runner] :: This group of commands utilizes Robot Framework RPA and will allow you to run various Docker Containers from Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019 in an order defined by you. You can use your voice or type text into the leon-ai UI using the commands listed below...
"set up custom task" <-- This command NEEDS TO RUN BEFORE OTHERS in this group. This will set up an RPA custom task automation runner that allows the user to define which RPA tasks will run using a CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv file.
"set docker clean" <-- This command can RUN AFTER the "set up custom task" command is finished running. It will set the RPA custom task automation runner to run this specifically tagged RPA task in the Leon-Robot-Framework-Customizable-RPA-Task-Runner.robot file. This RPA task works the same way as the similar command found in the [Docker Container Examples].
"set docker build" <-- This command can RUN AFTER the "set up custom task" command is finished running. It will set the RPA custom task automation runner to run this specifically tagged RPA task in the Leon-Robot-Framework-Customizable-RPA-Task-Runner.robot file. This RPA task works the same way as the similar command found in the [Docker Container Examples].
"set remote docker one" <-- This command can RUN AFTER the "set up custom task" command is finished running. It will set the RPA custom task automation runner to run this specifically tagged RPA task in the Leon-Robot-Framework-Customizable-RPA-Task-Runner.robot file. This RPA task works the same way as the similar command found in the [Docker Container Examples].
"set remote docker two" <-- This command can RUN AFTER the "set up custom task" command is finished running. It will set the RPA custom task automation runner to run this specifically tagged RPA task in the Leon-Robot-Framework-Customizable-RPA-Task-Runner.robot file. This RPA task works the same way as the similar command found in the [Docker Container Examples].
"set trigger remote one" <-- This command can RUN AFTER the "set up custom task" command is finished running. It will set the RPA custom task automation runner to run this specifically tagged RPA task in the Leon-Robot-Framework-Customizable-RPA-Task-Runner.robot file. This RPA task works the same way as the similar command found in the [Docker Container Examples].
"set trigger remote two" <-- This command can RUN AFTER the "set up custom task" command is finished running. It will set the RPA custom task automation runner to run this specifically tagged RPA task in the Leon-Robot-Framework-Customizable-RPA-Task-Runner.robot file. This RPA task works the same way as the similar command found in the [Docker Container Examples].
"set trigger parallel docker" <-- This command can RUN AFTER the "set up custom task" command is finished running. It will set the RPA custom task automation runner to run this specifically tagged RPA task in the Leon-Robot-Framework-Customizable-RPA-Task-Runner.robot file. This RPA task works the same way as the similar command found in the [Docker Container Examples].
"set bug risk predictor" <-- This command can RUN AFTER the "set up custom task" command is finished running. It will set the RPA custom task automation runner to run this specifically tagged RPA task in the Leon-Robot-Framework-Customizable-RPA-Task-Runner.robot file. This will run an RPA task that will trigger a Docker Container that predicts bug risk in a GitHub and sends out alerts.
"set slack" <-- This command can RUN AFTER the "set up custom task" command is finished running. It will set the RPA custom task automation runner to run this specifically tagged RPA task in the Leon-Robot-Framework-Customizable-RPA-Task-Runner.robot file. This RPA task works the same way as the similar command found in the >> Stand-alone Commands <<.
"custom task runner" <-- This on-demand (no time delay) command NEEDS TO RUN AFTER the "set up custom task" and the "set xxxx xxxx etc." command(s) finished running. It will immediately run the parallel and serial tasks from this group of related commands in an order defined by you.
"display rpa results" <-- This command NEEDS TO RUN AFTER the "custom task runner" command is finished running. It will display the combined results of the "custom task runner" command.
```

#### Hypothetical assumptions about inconsistent speech recognition using DeepSpeech engine with leon-ai for just voice commands (typing text commands through the leon-ai UI works perfectly fine).

While using leon-ai's offline speech-to-text engine (DeepSpeech), you may notice that sometimes it makes mistakes interpreting what you are saying or it just hangs and does nothing. Here are some hypothetical assumptions I've made based on some quick research.

1) Tensorflow hardware requirements favor NVidia GPU technologies more. If you use a non-NVidia GPU (no CUDA cores etc.) it will be underutilized. For example, only using onboard graphics on a laptop may affect performance.
- https://github.com/mozilla/DeepSpeech/releases
- https://github.com/mozilla/DeepSpeech/issues/2128
- https://discourse.mozilla.org/t/doesn-t-use-gpu-while-training-but-during-recognition-it-uses-one/27965/20
- https://towardsdatascience.com/tensorflow-speech-recognition-challenge-solution-outline-9c42dbd219c9

2) DeepSpeech Speech-to-Text Engine itself has been reported having accuracy issues.
- https://discourse.mozilla.org/t/improving-the-accuracy-of-the-speech-recognition-with-newer-iterations-of-deepspeech-or-other-competing-techniques-in-deep-speech-recognition/34006
- https://discourse.mozilla.org/t/terrible-accuracy/46823
- https://github.com/tensorflow/models/issues/7567

3) If you have an unreliable or poor quality microphone it may affect performance.
- https://github.com/mozilla/DeepSpeech/issues/1156#issuecomment-434872303
