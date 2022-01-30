import logo from "./icon.png"
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} alt="App Logo" className="App-logo" />
        <h1>Plane Run</h1>
        <span>
          <h3>
            <a href="https://m.pr.eggsnham.com" className="App-link">Mobile</a>
            <span className='App-spacer'>-</span>
            Or
            <span className='App-spacer'>-</span>
            <a href="/game" className="App-link">Desktop</a>
          </h3>
        </span>
      </header>
    </div>
  );
}

export default App;
