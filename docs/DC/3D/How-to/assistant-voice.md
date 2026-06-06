---
title: Talk to Tessa with voice
diataxis: how-to
tags: [how-to, tessa, voice]
---

# Talk to Tessa with voice

This guide shows how to use speech to ask Tessa questions and hear her responses, without taking your hands off your work.

> Talk to Tessa like a teammate. Ask questions out loud, get spoken answers back - no keyboard required.

Voice interaction lets you have a natural conversation with Tessa using speech recognition and synthesis. This is especially valuable in VR, where typing is impractical and hands-free operation keeps you immersed in the 3D environment.

## Activating Voice

1. **Click the microphone icon** in the chat panel to begin listening
2. **Type `/voice on`** to enable voice mode
3. **Type `/voice`** to toggle voice on or off

Once active, Tessa listens for your question, processes it, and responds with synthesized speech while also showing the text response in the chat panel.

## Voice Commands

| Command | What It Does |
|---------|--------------|
| `/voice` | Toggle voice mode on/off |
| `/voice on` | Enable voice mode |
| `/voice off` | Disable voice mode |
| `/mute` | Mute Tessa's speech output (she still responds in text) |
| `/unmute` | Re-enable Tessa's speech output |

!!! tip "Mute vs voice off"
    `/mute` silences Tessa's spoken responses but keeps voice recognition active - you can still speak to her. `/voice off` disables both speech input and output.

## Changing Tessa's Voice

Tessa can speak in different voices. Use the voice tool to browse and switch:

| What to Say | Effect |
|-------------|--------|
| "List available voices" | Shows voices filtered by locale and gender |
| "Preview the Jenny voice" | Plays a sample of a specific voice |
| "Change your voice to Jenny" | Switches to a named voice |
| "What voice are you using?" | Shows current voice |

Tessa supports fuzzy matching - saying "Jenny" resolves to the full voice name (e.g., "en-US-JennyNeural"). Your voice selection persists across sessions.

## Interrupting Tessa

If Tessa is speaking and you need to cut in:

- **Press Escape** to stop her current speech immediately

Pressing Escape does not lose your place in the conversation. Tessa's text response remains in the chat, and you can continue asking follow-up questions right away.

## Tips for VR Headset Users

Voice is the primary interaction mode for VR:

- **Keep voice mode on** so the microphone stays active between questions. You can have a continuous conversation without re-activating the mic each time.
- **Be specific with service names** - speak them clearly. Tessa uses your Grid's service catalog to match what she hears.
- **Combine voice with navigation** - teleport to a service platform and ask "What's wrong here?" Tessa uses your position as context.

## Combining Voice and Text

Voice and text work interchangeably in the same conversation:

- Speak a question, then type a follow-up
- Type a question, then speak "Tell me more"
- Switch between modes freely - conversation context is preserved regardless of input method

Chat history captures both voice and typed interactions, and everything is saved across sessions.

## Related

- **For concept and design:** see [Tessa - Your AI Assistant](../Overview/ai-assistant.md).
- **To share images alongside voice questions:** see [Share images with Tessa](assistant-vision.md).
- **For prompt patterns that work with voice:** see [Write better prompts for Tessa](assistant-prompts.md).
