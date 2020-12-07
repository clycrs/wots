const audioChunks = [];

function handlerFunction(stream) {
  const rec = new MediaRecorder(stream);

  record.onclick = e => {
    console.log('I was clicked')
    record.disabled = true;
    record.style.backgroundColor = "#EBF8FF"
    stopRecord.disabled = false;
    rec.start();
  }

  rec.ondataavailable = e => {
    audioChunks.push(e.data);
    if (rec.state == "inactive") {
      let blob = new Blob(audioChunks, { type: 'audio/mpeg-3' });
      recordedAudio.src = URL.createObjectURL(blob);
      recordedAudio.controls = true;
      recordedAudio.autoplay = true;
      sendData(blob)
    }
  }

  stopRecord.onclick = e => {
    console.log("I was clicked")
    record.disabled = false;
    stop.disabled = true;
    record.style.backgroundColor = "#6FB9C3"
    rec.stop();
  }
}

function sendData(data) {
  const reader = new FileReader();
  reader.onload = function (event) {
    const input = $("#cast_audio")
    input[0].value = event.target.result;
    // input.files = [event.target.result]
  };
  reader.readAsDataURL(data);
}


const initAudioMinicast = () => {
  if (document.getElementById("record")) {
    navigator.mediaDevices.getUserMedia({ audio: true })
      .then(stream => { handlerFunction(stream) })
  }
};

export {initAudioMinicast};
