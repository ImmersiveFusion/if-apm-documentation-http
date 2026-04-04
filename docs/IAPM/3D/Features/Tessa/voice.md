# Voice Interaction

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
- **Use Escape to interrupt** long responses and redirect. In VR, this is mapped to the controller menu button.
- **Combine voice with navigation** - teleport to a service platform and ask "What's wrong here?" Tessa uses your position as context.
- **Mute in noisy environments** - use `/mute` to switch to text-only responses if background noise is an issue.

## Combining Voice and Text

Voice and text work interchangeably in the same conversation:

- Speak a question, then type a follow-up
- Type a question, then speak "Tell me more"
- Switch between modes freely - conversation context is preserved regardless of input method

Chat history captures both voice and typed interactions, and everything is saved across sessions.

## Related

- [Tessa Overview](../ai-assistant.md) - All capabilities and commands
- [Prompt Guide](prompts.md) - Example prompts (work with both voice and text)
- [Multimodal Vision](vision.md) - Combine voice questions with pasted images
