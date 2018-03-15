import React, { Component } from 'react';
import { BrowserRouter, Link } from 'react-router-dom';
import ItemTile from '../components/ItemTile'

class Shop extends Component {
  constructor(props){
    super(props)
    this.state = {
      listings: null
    }
  }

  componentDidMount() {
    fetch('/api/v1/shop/',{
      credentials: "same-origin"
    })
    .then(response => response.json())
    .then(body => {
        this.setState({ listings: body.listings })
    })
  }

  render() {
    let allItems
    if (this.state.listings) {
        allItems = this.state.listings.map((listing, index) => {
            return (
              <ItemTile
                  key={listing.listing_id}
                  photo={listing.photo}
                  title={listing.title}
                  price={listing.price}
                  url={listing.url}
              />
            )
          })
    } else {
      allItems = <h4 className="center-notice font-cursive"><i className="fa fa-cog fa-lg fa-spin" aria-hidden="true"></i> Loading shop items, please wait a second...</h4>
    }

    return (
      <div className="row">
          {allItems}
      </div>
    )
  }
}

export default Shop
