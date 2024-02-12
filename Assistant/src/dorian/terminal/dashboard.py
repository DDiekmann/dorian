from textual.app import App, ComposeResult, Binding
from textual.widgets import Header, Footer
from textual.widgets import TabbedContent, Placeholder, TabPane, Collapsible


class Dashboard(App):
    """The main Dashboard app."""

    CSS_PATH = "main_style.css"

    BINDINGS = [
        Binding("ctrl+c", "quit", "Quit", show=False, priority=True),
        Binding("tab", "focus_next", "Focus Next", show=False),
        Binding("shift+tab", "focus_previous", "Focus Previous", show=False),
        Binding("ctrl+d", "toggle_dark", "Toggle dark mode"),
        Binding("c", "command_palette", "Command Palette", show=False)
    ]

    def compose(self) -> ComposeResult:
        """Create child widgets for the app."""
        yield Header(show_clock=True)
        yield Footer()
        with TabbedContent():
            with TabPane(title="Home"):
                yield Placeholder("Home")
            with TabPane(title="Devices"):
                yield Placeholder("Devices")
            with TabPane(title="Installations"):
                with Collapsible(title="Docker"):
                    yield Placeholder("Docker")
                with Collapsible(title="Github"):
                    yield Placeholder("Github")
                with Collapsible(title="Obsidian"):
                    yield Placeholder("Obsidian")
                with Collapsible(title="VSCode"):
                    yield Placeholder("VSCode")
                with Collapsible(title="Rust"):
                    yield Placeholder("Rust")
                with Collapsible(title="Poetry"):
                    yield Placeholder("Poetry")
            with TabPane(title="Settings"):
                yield Placeholder("Settings")
            with TabPane(title="About"):
                yield Placeholder("About")

    def on_mount(self) -> None:
        """Called when the app is mounted."""
        self.title = "Dorian"
        self.dark = True

    def action_toggle_dark(self) -> None:
        """An action to toggle dark mode."""
        self.dark = not self.dark


if __name__ == "__main__":
    app = Dashboard()
    app.run()
