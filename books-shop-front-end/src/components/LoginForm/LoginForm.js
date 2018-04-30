import React, { Component } from 'react'
import './../../App.css'
class LoginForm extends Component {
    render() {
        return (
            <div className="col-xs-5 col-sm-5 col-md-5 col-lg-5 col-centered mt-30">
                <div className="panel panel-info">
                    <div className="panel-heading">
                        <h3 className="panel-title">Login</h3>
                    </div>
                    <div className="panel-body">
                        <form>
                            <div className="form-group">
                                <label for="">UserName</label>
                                <input
                                    type="text"
                                    className="form-control"
                                    id=""
                                    placeholder="Input field" />
                             </div>
                            <div className="form-group">
                                <label for="">Password</label>
                                <input
                                    type="text"
                                    className="form-control"
                                    id=""
                                    placeholder="Input field" />
                             </div>
                            <button type="submit" className="btn btn-primary">Submit</button>
                        </form>
                    </div>
                </div>

            </div>
        );
    }
}

export default LoginForm;