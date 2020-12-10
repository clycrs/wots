const audioChunks = [];

function handlerFunction(stream) {
  const rec = new MediaRecorder(stream);
  const deleteRecord = document.querySelector("#deleteRecord");

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
      let blob = new Blob(audioChunks, { type: 'audio/mp4' });
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
    deleteRecord.disabled = false;
    record.style.backgroundColor = "#6FB9C3"
    stopRecord.style.backgroundColor = "#6FB9C3"
    console.log(rec)
    rec.stop();
    sendData()
  }

  deleteRecord.onclick = e => {
    console.log("I was clicked")
    recordedAudio.src = "";
    // recordedAudio.controls = false;
    // recordedAudio.autoplay = false;
    deleteRecord.disabled = true;
    record.disabled = false;
    stop.disabled = true;
    record.style.backgroundColor = "#EBF8FF"
    const input = $("#cast_audio")
    input[0].value = "";
  }

}

function sendData() {
  const data = new Blob(audioChunks);
  const reader = new FileReader();
  reader.onloadend = function (event) {
    const input = $("#cast_audio")
    input[0].value = reader.result;
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
