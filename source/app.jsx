import * as React from 'react';
import * as ReactDOM from 'react-dom';
import {Router, Route, Link} from 'react-router'
import {createHashHistory} from 'history';

import Navigation from './components/Navigation';
import FirstPage from './components/pages/FirstPage';
import SecondPage from './components/pages/SecondPage';

import * as constants from './constants';

ReactDOM.render(
    <div>
        <Navigation></Navigation>
        <Router history={createHashHistory({queryKey: false})}>
            <Route path="second" component={SecondPage}/>
            <Route path="*" component={FirstPage}/>
        </Router>
    </div>,
    document.getElementById(constants.APP_CONTAINER_ID)
);
