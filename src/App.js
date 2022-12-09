import logo from './logo.svg';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
	<h1>PEA ENERGIA - SCADA</h1>
	<h2>Demo API-REST</h2>
	<hr/>
        <h3>Dpto de Tecnologia@dic2022</h3>
        <h4>J. Fernando DC</h4>
	<h5>La Rioja - Argentina</h5>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
}

export default App;
