import { useState } from "react";
function ProfileCard() {
    const [following, setFollowing] = useState(false);
    return (
        <div className="max-w-sm mx-auto bg-white rounded-2xl shadow-lg p-6 text-center">
            <img
                src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=300"
                alt="Profile"
                className="w-28 h-28 rounded-full mx-auto object-cover"
            />
            <h2 className="text-2xl font-bold mt-4 text-gray-800">
                Madhavan
            </h2>

            <h3 className="text-blue-600 font-semibold mt-1">
                Full Stack Developer
            </h3>

            <p className="text-gray-500 mt-3">
                Passionate developer interested in React,
                Python and emerging technologies.
            </p>
            <button
                onClick={() => setFollowing(!following)}
                className="mt-5 bg-blue-600 hover:bg-blue-700 text-white px-8 py-2 rounded-full"
            >
                {following ? "Following" : "Follow"}
            </button>
        </div>
    );
}
export default ProfileCard;