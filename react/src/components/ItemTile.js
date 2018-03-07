import React from 'react';

const ItemTile = props => {

  return (

    <div className="no-padding col s12 m4 l3">
        <div className="boxed">
            <img src={props.photo} className="img-box"></img>
        </div>
    </div>
  )
}

export default ItemTile
