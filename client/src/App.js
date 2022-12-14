import { Routes, Route } from 'react-router-dom';
import Home from './components/shared/home/Home';
import About from '.components/shared/about/About';
import Billboard from '.components/billboards/Billboards'

const App = () => (
  <>
    <Routes>
      <Route path='/' element={<Home />} />
      <Route path='/about' element={<About />} />
      <Route path='/billboards' element={<Billboard />} />
    </Routes>
  </>
)

export default App;
