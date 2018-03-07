import React from 'react';

const ItemTile = props => {

  return (

    <div className="no-padding col s12 m4 l3">
        <div className="boxed">
            <a href={props.url}><img src={props.photo} className="img-box"></img></a>
        </div>
    </div>
  )
}

export default ItemTile
