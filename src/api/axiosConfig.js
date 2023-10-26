import axios from "axios";

export default axios.create({
    baseURL: "https://popcorn-api-kso7.onrender.com", // Use the root URL of your backend here
    headers: {"ngrok-skip-browser-warning": "true"}
});
