function Card({title,children}){
return(
    <div class="card">
        <h1>{title}</h1>
        <div class="card-con">{children}</div>
    </div>
);
}
export default Card;