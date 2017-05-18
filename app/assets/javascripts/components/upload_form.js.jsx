var UploadForm = React.createClass({

  //  handleChange: function(event) {
  //    this.setState({value: event.target.value});
  //  },
   //
  //  handleSubmit: function(event) {
  //    alert('A name was submitted: ' + this.state.value);
  //    event.preventDefault();
  //  },

  render: function() {
    return(
      <div className="col-lg-6">
      <p>MEeeeeee</p>
      <form onSubmit={this.handleSubmit}>
        <label>
          Name:
          <input type="text" value={this.state.value} onChange={this.handleChange} />
        </label>
        <div className="modal-footer">
          <input type="submit" value="Submit" />
        </div>
      </form>
      </div>

    );
  }
});
