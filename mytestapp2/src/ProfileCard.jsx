function ProfileCard({name,age,role,children}){
    return(
        <div class="profile-card">
            <h2>{name}</h2>
            <p>Age:{age}</p>
            <p>Role:{role}</p>
            <div>{children}</div>
        </div>
    );
}
export default ProfileCard;