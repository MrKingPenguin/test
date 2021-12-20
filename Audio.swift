import AVFoundation
import PlaygroundSupport

var audioPlayer: AVAudioPlayer?

public func playAudio(Resource: String, Extension: String) {
    if let audioURL = Bundle.main.url(forResource: Resource, withExtension: Extension) {
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: audioURL) /// make the audio player
            audioPlayer?.numberOfLoops = 0 /// Number of times to loop the audio
            audioPlayer?.play() /// start playing
        } catch {
            print("Couldn't play audio. Error: \(error)")
        }
    } else {
        print("No audio file found")
    }
}

public func stopAudio() {
    audioPlayer?.stop()
}

public func pauseAudio() {
    audioPlayer?.pause()
}
