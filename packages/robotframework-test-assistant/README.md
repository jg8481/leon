# Robot Framework Test Assistant Package

## Modules

### Use leon-ai to turn Robot Framework into a personal testing assistant and OpenRPA task runner.

The following tool requirements need to be set up first in order to run the tests and RPA tasks suite examples in this assistant's "robotframework-brain". Please set up or install all of the tool requirements mentioned below, including all of the required .env files.

- https://github.com/jg8481/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/blob/master/README.md
- https://github.com/coursehero/slacktee

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

From any browser enter this URL --> http://localhost:1337/

```
(en-US) "Check one'
```

#### Hypothetical assumptions about inconsistent speech recognition using DeepSpeech engine with leon-ai for just voice commands (typing text commands through the leon-ai web app UI works perfectly fine).

While using leon-ai's offline speech-to-text engine (DeepSpeech), you may notice that some times it makes mistakes interpreting what you are saying or it just hangs and does nothing. Here are some hypothetical assumptions I've made based on some quick research.

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
