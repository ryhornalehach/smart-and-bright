import React from 'react';

const ItemTile = props => {

  return (

    <div className="no-padding col s12 m4 l3">
        <div className="boxed">
            <a href={props.url}><img src={props.photo} className="img-box"></img></a>
            <div>
              <p className="boxed-text">{props.title}<br/>${props.price}</p>
            </div>
        </div>
    </div>
  )
}

export default ItemTile
