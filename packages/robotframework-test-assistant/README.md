# Robot Framework Test Assistant Package

## Modules

### Use leon-ai to turn Robot Framework into a personal testing assistant and OpenRPA task runner.

### Commands to use while doing development, and before running leon-ai.

```
npm install && npm run build && npm start
#If you get this --> ".env file already exists, overwrite:..." Select No
```

```
#Open another terminal, and run the following to use voice commands
npm run wake
```

#### Usage

```
(en-US) "Check one'
```

#### Hypothetical assumptions about inconsistent speech recognition using DeepSpeech engine with leon-ai for voice commands.

While using leon-ai's speech recognition engine (DeepSpeech), you may notice that some times it makes mistakes interpreting what you are saying or it just hangs and does nothing. Here are some hypothetical assumptions I've made based on some quick research.

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